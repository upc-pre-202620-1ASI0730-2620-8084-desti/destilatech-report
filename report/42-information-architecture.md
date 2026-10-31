### 4.2. Information Architecture

La arquitectura de información define cómo se organizan, nombran, buscan y recorren los contenidos de Destilatech. Se basa en los principios de Rosenfeld et al. (2015): sistemas de organización, de etiquetado, de búsqueda y de navegación. Las historias de usuario citadas corresponden a las de la sección 3.1.

#### 4.2.1. Organization Systems

Un sistema de organización agrupa el contenido bajo **esquemas** (criterios para agrupar) y **estructuras** (relaciones entre grupos). Los esquemas pueden ser exactos (el criterio no admite duda, como el orden alfabético o cronológico) o ambiguos (dependen de la interpretación, como la agrupación por tema, por tarea o por tipo de usuario).

**Esquemas de organización**

| Esquema | Tipo | Dónde se aplica en Destilatech |
| :---------- | :---------- | :-------------------------------------- |
| Cronológico | Exacto | Historial de un lote y sus cambios de estado (US08); historial de movimientos de inventario (US46) y de pedidos (US19); lecturas de variables ordenadas por fecha y hora (US09). |
| Alfabético | Exacto | Listas de productos (US12) y de clientes (US17) ordenadas por nombre; selector de lotes por código. |
| Por tema | Ambiguo | Secciones de la landing page agrupadas por tema: descripción, beneficios, planes, impacto y funcionalidades (US31 a US35). |
| Por tarea | Ambiguo | Menú de la aplicación: Dashboard, Monitoreo, Lotes, Inventario, Pedidos y Alertas, agrupados por la tarea que el usuario quiere realizar. |
| Por tipo de usuario | Ambiguo | Menú y dashboards diferenciados para Productor (US04) y Comercializador (US05); pestañas de funcionalidades por segmento (US35). |

**Estructuras de organización**

- *Estructura jerárquica.* La landing page se organiza como árbol: la página principal contiene secciones, y cada sección, sus elementos (por ejemplo, Precios contiene tres planes). La aplicación se organiza por módulos: Lotes contiene el listado y el detalle de cada lote, con su historial (US06, US08).
- *Estructura secuencial.* Los procesos que requieren pasos ordenados se guían por pasos sucesivos: registro de cuenta y prueba gratuita (US01), registro de un lote (US06) y registro de un pedido con sus líneas de producto (US18).
- *Estructura matricial.* Las tablas permiten al usuario ordenar y filtrar el mismo conjunto de datos por distintos ejes: el stock por producto y estado (US14), los lotes por variedad y etapa (US08) y las alertas por tipo y estado (US16).

**Organización visual.** Para reducir la carga cognitiva se aplica jerarquía visual: la información crítica (alertas de condición anómala y productos con stock bajo) se ubica en la parte superior con los colores de advertencia y el mayor peso tipográfico; la información secundaria (configuración de cuenta) mantiene menor protagonismo.

#### 4.2.2. Labeling Systems

El etiquetado usa un lenguaje coherente con el Ubiquitous Language (sección 2.5) y adaptado a cada perfil. Cada etiqueta indica la acción o el contenido de forma directa y, cuando corresponde, incluye su unidad de medida.

| Perfil | Criterio de etiquetado | Ejemplos |
| :---------- | :-------------- | :------------------------ |
| Visitante | Llamadas a la acción claras y campos de formulario breves. | «Prueba gratis 14 días», «Ver funcionalidades», «Nombre», «Nombre del negocio», «Correo electrónico». |
| Productor | Términos técnicos del proceso con unidades explícitas. | «Temperatura (°C)», «Densidad», «pH», «Humedad (%)», «Lote», «Etapa», «+ Nuevo lote». |
| Comercializador | Términos de gestión de stock y ventas. | «Stock», «Stock bajo», «Umbral de stock bajo», «+ Nuevo pedido», «Clientes», «Lista de compra». |

**Etiquetado en móvil.** En pantallas pequeñas las etiquetas de los botones de acción se acortan («+ Lote», «+ Pedido») y se acompañan de un ícono; el texto completo se conserva en el atributo `aria-label` para lectores de pantalla.

#### 4.2.3. SEO Tags and Meta Tags

Las etiquetas SEO ayudan a los buscadores a interpretar y posicionar una página; las metaetiquetas aportan información sobre ella, como su descripción, palabras clave y autor. A continuación se presentan las etiquetas definidas para la **landing page** (pública e indexable) y para la **aplicación web** (de uso privado, no indexable). El idioma por defecto del producto es el inglés; el contenido en español se activa con el selector de idioma.

**Landing page**

***Title.*** Título único de la página, con la palabra clave principal.

```html
<title>Destilatech | Production and inventory management for pisco producers</title>
```

***Description.*** Resumen de la página que se muestra en los resultados de búsqueda.

```html
<meta name="description" content="Destilatech is a SaaS platform that centralizes production monitoring with simulated IoT data, inventory and orders for pisco producers and retailers in Peru. Try it free for 14 days.">
```

***Keywords.*** Términos de búsqueda relacionados con el producto.

```html
<meta name="keywords" content="pisco, pisco production, inventory management, IoT monitoring, SaaS, Peru, batch traceability">
```

***Author.*** Autor del contenido.

```html
<meta name="author" content="FuturosSeniors">
```

***Idioma.*** Se declara el idioma por defecto en el elemento raíz y, para el contenido alterno, en cada bloque traducido.

```html
<html lang="en">
<meta http-equiv="Content-Language" content="en">
```

***Robots.*** La landing page se indexa.

```html
<meta name="robots" content="index, follow">
```

***Viewport.*** Necesaria para la adaptación a pantallas móviles.

```html
<meta name="viewport" content="width=device-width, initial-scale=1.0">
```

***Canonical.*** URL canónica publicada del sitio.

```html
<link rel="canonical" href="https://upc-pre-202620-1asi0730-2620-8084-desti.github.io/destilatech-website/">
```

**Aplicación web**

La aplicación web requiere inicio de sesión, por lo que no debe aparecer en los buscadores; aun así, mantiene título, descripción, palabras clave y autor para el uso compartido de enlaces y la accesibilidad.

```html
<title>Destilatech App | Production, inventory and orders</title>
<meta name="description" content="Destilatech web application: batch tracking, simulated IoT monitoring, inventory, orders and alerts for pisco producers and retailers.">
<meta name="keywords" content="pisco, batches, inventory, orders, alerts, IoT simulator">
<meta name="author" content="FuturosSeniors">
<meta name="robots" content="noindex, nofollow">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
```

#### 4.2.4. Searching Systems

Los sistemas de búsqueda permiten al usuario encontrar información sin recorrer toda la navegación. Destilatech ofrece filtros y búsqueda por texto en los listados principales:

- **Lotes de producción:** búsqueda por código de lote y filtros por variedad (Quebranta, Italia, Acholado, Torontel) y por etapa (registrado, fermentación, destilación, embotellado, finalizado).
- **Lecturas de variables:** selección del lote y de la variable (temperatura, pH, humedad, densidad) y filtro por rango de fechas para ver su tendencia.
- **Productos e inventario:** búsqueda por nombre o SKU y filtro por estado de stock (óptimo, bajo, crítico).
- **Pedidos y clientes:** búsqueda por cliente y filtro por estado del pedido.
- **Alertas:** filtros por tipo (stock bajo o anomalía de sensor) y por estado (pendiente o atendida).

En móvil, el campo de búsqueda se muestra en la parte superior de cada listado y los filtros se agrupan en un panel desplegable.

#### 4.2.5. Navigation Systems

Los sistemas de navegación definen cómo se desplaza el usuario por el producto.

- **Navegación global.** En la landing page, el menú del encabezado lleva a cada sección. En la aplicación, la barra lateral permite pasar entre Dashboard, Monitoreo, Lotes, Inventario, Pedidos y Alertas; el Comercializador ve una versión reducida (Dashboard, Inventario, Pedidos y Alertas).
- **Registro e inicio de sesión.** Al registrarse, el usuario elige si su negocio es productor o comercializador; esa elección determina el menú y el dashboard que verá (US01, US02).
- **Dashboard.** Es la pantalla de inicio de la aplicación; resume los indicadores y da acceso directo a las alertas pendientes (US04, US05).
- **Monitoreo y lotes.** Permiten recorrer el ciclo de vida de cada lote y consultar las lecturas de sus variables, que provienen del simulador de datos IoT (US08, US09).
- **Inventario y pedidos.** Permiten consultar el stock, registrar movimientos y registrar pedidos de clientes (US13, US14, US18).
- **Mi cuenta.** Reúne los datos del negocio, el plan y el estado de la suscripción.
- **Migas de pan y retorno.** Las pantallas de detalle muestran su ubicación (por ejemplo, Lotes > LT-2026-018) y un enlace para volver al listado.
- **Navegación en móvil.** El menú lateral se reemplaza por un menú desplegable abierto desde el botón de menú del encabezado; las acciones principales permanecen al alcance del pulgar.
