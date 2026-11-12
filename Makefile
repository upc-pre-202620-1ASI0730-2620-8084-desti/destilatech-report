# Informe de Destilatech — documentación como código
# Uso:  make check | make diagrams | make pdf | make clean
# Requiere GNU Make (en Windows: Git Bash + `choco install make`, o WSL).

# PLANTUML puede ser "java -jar plantuml.jar"
# MMDC es Mermaid CLI (npm i -g @mermaid-js/mermaid-cli); agregar -p puppeteer.json a MMDC_ARGS si no detecta Chrome
PANDOC    ?= pandoc
PLANTUML  ?= plantuml
MMDC      ?= mmdc
MMDC_ARGS ?= -s 2 -b white

DEFAULTS := config/build.yaml
PDF      := dist/destilatech-informe.pdf
DIAG     := report/assets/diagrams

PUML     := $(wildcard $(DIAG)/plantuml/*.puml)
PUML_PNG := $(patsubst $(DIAG)/plantuml/%.puml,$(DIAG)/plantuml/png/%.png,$(PUML))
MMD      := $(wildcard $(DIAG)/mermaid/*.mmd)
MMD_PNG  := $(patsubst $(DIAG)/mermaid/%.mmd,$(DIAG)/mermaid/png/%.png,$(MMD))
SOURCES  := $(wildcard report/*.md report/front-matter/*.md report/annexes/*.md)

.PHONY: all pdf diagrams plantuml mermaid check clean
all: pdf

pdf: $(PDF)

$(PDF): $(DEFAULTS) config/metadata.yaml config/latex/header.tex config/filters/html-to-ast.lua $(SOURCES) $(PUML_PNG) $(MMD_PNG)
	@mkdir -p dist
	$(PANDOC) --defaults=$(DEFAULTS)
	@echo "PDF generado: $(PDF)"

diagrams: plantuml mermaid

plantuml: $(PUML_PNG)
$(DIAG)/plantuml/png/%.png: $(DIAG)/plantuml/%.puml
	@mkdir -p $(dir $@)
	$(PLANTUML) -tpng -charset UTF-8 -o png $<

mermaid: $(MMD_PNG)
$(DIAG)/mermaid/png/%.png: $(DIAG)/mermaid/%.mmd
	@mkdir -p $(dir $@)
	$(MMDC) -i $< -o $@ $(MMDC_ARGS)

check:
	@command -v $(PANDOC) >/dev/null && $(PANDOC) --version | head -1 || echo "FALTA pandoc (>= 3.1)"
	@command -v xelatex >/dev/null && echo "xelatex OK" || echo "FALTA xelatex (TeX Live o MiKTeX)"
	@command -v java >/dev/null && echo "java OK" || echo "FALTA java (necesario para PlantUML)"
	@command -v plantuml >/dev/null && echo "plantuml OK" || echo "FALTA plantuml (o use PLANTUML='java -jar plantuml.jar')"
	@command -v $(MMDC) >/dev/null && echo "mmdc OK" || echo "mmdc no instalado (solo si se regenera Mermaid)"

clean:
	rm -rf dist
