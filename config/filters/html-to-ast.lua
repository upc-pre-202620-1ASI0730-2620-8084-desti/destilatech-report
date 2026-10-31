-- Convierte el HTML incrustado en los archivos Markdown del informe en elementos
-- nativos de Pandoc, para que el PDF (LaTeX) los muestre igual que GitHub.
--   * <table>, <p><img>, <b>, <i>, <br>, <img>, <a>, <code>  -> AST nativo
--   * <div style="page-break-after: always"> -> \newpage
--   * <div align="center"> -> entorno center
--   * bloques ::: {.toc} -> \tableofcontents
--   * bloques de código sin lenguaje -> sintaxis "default" (permite saltos de línea largos)

local PX_PER_PCT = 9 -- 900 px equivalen al 100 % del ancho de texto

local function fix_image(img, full)
  -- las imágenes remotas no se descargan en la compilación: se muestra su texto alternativo
  if img.src:match('^https?://') then
    io.stderr:write('[html-to-ast] imagen remota omitida: ' .. img.src .. '\n')
    return pandoc.Emph(pandoc.utils.stringify(img.caption) ~= '' and img.caption or { pandoc.Str('[imagen]') })
  end
  local w = img.attributes['width']
  img.attributes['height'] = nil
  if full then
    img.attributes['width'] = '100%'
  elseif w and not w:find('%%') then
    local n = tonumber(w:match('^(%d+%.?%d*)'))
    if n then
      local pct = math.floor(n / PX_PER_PCT + 0.5)
      img.attributes['width'] = math.max(12, math.min(100, pct)) .. '%'
    end
  end
  return img
end

local function parse_inline(txt)
  local doc = pandoc.read(txt, 'html')
  local first = doc.blocks[1]
  if first and (first.t == 'Plain' or first.t == 'Para') then return first.content[1] end
  return nil
end

local simple = { b = 'Strong', strong = 'Strong', i = 'Emph', em = 'Emph', u = 'Underline', sub = 'Subscript', sup = 'Superscript' }

function Inlines(inlines)
  local changed = false
  local root = { list = pandoc.List() }
  local stack = { root }
  local function top() return stack[#stack] end
  for _, el in ipairs(inlines) do
    if el.t == 'RawInline' and el.format:match('html') then
      changed = true
      local txt = el.text
      local close = txt:match('^</%s*(%w+)%s*>$')
      local open = txt:match('^<%s*(%w+)')
      if close then
        local name = close:lower()
        if #stack > 1 and top().name == name then
          local fr = table.remove(stack)
          local node
          if simple[name] then node = pandoc[simple[name]](fr.list)
          elseif name == 'a' then node = pandoc.Link(fr.list, fr.href or '')
          elseif name == 'code' then node = pandoc.Code(pandoc.utils.stringify(fr.list))
          else node = pandoc.Span(fr.list) end
          top().list:insert(node)
        end
      elseif open then
        local name = open:lower()
        if name == 'br' then top().list:insert(pandoc.LineBreak())
        elseif name == 'img' then
          local im = parse_inline(txt)
          if im and im.t == 'Image' then top().list:insert(fix_image(im, false)) end
        elseif simple[name] or name == 'a' or name == 'code' then
          table.insert(stack, { name = name, list = pandoc.List(), href = txt:match('href="([^"]*)"') })
        end
      end
    else
      top().list:insert(el)
    end
  end
  if not changed then return nil end
  while #stack > 1 do -- etiquetas sin cerrar: se conserva su contenido
    local fr = table.remove(stack)
    top().list:extend(fr.list)
  end
  return root.list
end

local function in_cells(blocks)
  return pandoc.walk_block(pandoc.Div(blocks), {
    Image = function(i) return fix_image(i, true) end,
    Header = function(h) return pandoc.Para({ pandoc.Strong(h.content) }) end,
  }).content
end

function RawBlock(el)
  if not el.format:match('html') then return nil end
  local txt = el.text
  if txt:match('page%-break') then return pandoc.RawBlock('latex', '\\newpage') end
  if txt:match('^%s*</?details') or txt:match('^%s*</?summary') then return {} end
  local doc = pandoc.read(txt, 'html')
  local blocks = doc.blocks
  -- las tablas y párrafos con imágenes se leen como HTML; las imágenes sueltas se escalan
  local res = pandoc.walk_block(pandoc.Div(blocks), {
    Image = function(i) return fix_image(i, false) end,
    Table = function(tb)
      return pandoc.walk_block(tb, {
        Image = function(i) return fix_image(i, true) end,
        Header = function(h) return pandoc.Para({ pandoc.Strong(h.content) }) end,
      })
    end,
    Header = function(h) return pandoc.Para({ pandoc.Strong(h.content) }) end,
    Div = function(d)
      if d.attributes['align'] == 'center' then
        return { pandoc.RawBlock('latex', '\\begin{center}'), d, pandoc.RawBlock('latex', '\\end{center}') }
      end
    end,
  })
  return res.content
end

function Table(tb)
  return pandoc.walk_block(tb, { Image = function(i) return fix_image(i, true) end })
end

-- Código en línea: permite cortar rutas, ramas y URLs largas dentro de las tablas
local function tex_escape(s)
  local map = { ['\\'] = '\\textbackslash{}', ['{'] = '\\{', ['}'] = '\\}', ['$'] = '\\$', ['&'] = '\\&',
    ['#'] = '\\#', ['^'] = '\\^{}', ['_'] = '\\_', ['%'] = '\\%', ['~'] = '\\~{}' }
  s = s:gsub('[\\{}$&#^_%%~]', function(c) return map[c] end)
  s = s:gsub('([/%-%.:,=])', '%1\\allowbreak{}')
  s = s:gsub('\\_', '\\_\\allowbreak{}')
  return s
end

function Code(el)
  if FORMAT:match('latex') and #el.text > 0 then
    return pandoc.RawInline('latex', '\\texttt{' .. tex_escape(el.text) .. '}')
  end
end

function Div(el)
  if el.classes:includes('toc') then
    return pandoc.RawBlock('latex', '\\tableofcontents\n\\newpage')
  end
  if el.attributes['align'] == 'center' or (el.attributes['style'] or ''):find('text%-align:%s*center') then
    return { pandoc.RawBlock('latex', '\\begin{center}'), el, pandoc.RawBlock('latex', '\\end{center}') }
  end
end

function CodeBlock(el)
  if #el.classes == 0 then
    el.classes = { 'default' }
    return el
  end
end
