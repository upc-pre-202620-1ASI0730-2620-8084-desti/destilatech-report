# destilatech-report

Repositorio del informe del trabajo final de **Destilatech**, plataforma web B2B (SaaS) para el monitoreo de la producción y la gestión de inventario y pedidos de pisco, desarrollada por el equipo **FuturosSeniors** para el curso **1ASI0730 Aplicaciones Web** (UPC, ciclo 2026-20, NRC 8084).

El informe se mantiene como **documentación como código**: cada capítulo es un archivo Markdown, los diagramas son código versionado y el PDF se genera con [Pandoc](https://pandoc.org/) a partir de esos archivos.

## Repositorios del proyecto

Todos están en la organización [`upc-pre-202620-1ASI0730-2620-8084-desti`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti).

| Repositorio | Contenido |
| :--- | :--- |
| `destilatech-report` | Este informe. |
| `destilatech-website` | Website estático (HTML, CSS y JavaScript). |
| `destilatech-webapp` | Single-Page Application en Vue 3. |
| `destilatech-platform` | REST API en ASP.NET Core (C#). |

## Estructura

```text
destilatech-report/
├── README.md                      Este archivo (descripción del repositorio)
├── Makefile                       Atajos: make check | diagrams | pdf | clean
├── config/
│   ├── build.yaml                 Configuración de Pandoc (orden de capítulos, motor, filtros)
│   ├── metadata.yaml              Metadatos y variables de maquetación del PDF
│   ├── latex/header.tex           Preámbulo LaTeX adicional
│   └── filters/html-to-ast.lua    Filtro Lua: HTML incrustado -> elementos nativos de Pandoc
├── report/
│   ├── front-matter/              01 carátula, 02 versiones, 03 colaboración, 04 índice, 05 student outcome
│   ├── 10-introduction.md         Capítulo I
│   ├── 20-requirements-elicitation.md      Capítulo II
│   ├── 30-requirements-specification.md    Capítulo III
│   ├── 40-product-design.md y 41…48        Capítulo IV (una sección por archivo)
│   ├── 50-product-implementation.md y 51…54 Capítulo V
│   ├── 90-conclusions.md
│   ├── 99-bibliography.md
│   ├── annexes/                   Anexos A, B y C
│   └── assets/
│       ├── diagrams/
│       │   ├── structurizr/       workspace.dsl, workspace.json (diseño de vistas) y png/  -> C4
│       │   ├── plantuml/          *.puml (clases y entidad-relación) y png/
│       │   └── mermaid/           *.mmd (Design-Level EventStorming) y png/
│       ├── md-images-front-matter/, commits/, webapp/, …   Capturas y fotos
│       └── analisis_entrevistas_destilatech.xlsx
└── dist/                          PDF generado (no se versiona)
```

El prefijo numérico fija el orden de lectura: `01-09` front matter, `10-89` capítulos, `90-99` cierre. Para agregar una sección, se crea el archivo con su prefijo y se agrega a `input-files` en `config/build.yaml`.

## Compilar el PDF

Requisitos: Pandoc 3.1 o superior, XeLaTeX (TeX Live o MiKTeX) y GNU Make. Para regenerar los diagramas de clases y de base de datos, además, Java y [PlantUML](https://plantuml.com/); para los flujos de EventStorming, Mermaid CLI.

```bash
make check      # verifica las herramientas instaladas
make diagrams   # genera los PNG de PlantUML y Mermaid
make pdf        # genera dist/destilatech-informe.pdf
```

Sin Make, el PDF se genera con un único comando, ejecutado desde la raíz del repositorio:

```bash
pandoc --defaults=config/build.yaml
```

## Diagramas

| Diagrama | Herramienta | Código fuente | Cómo se visualiza |
| :--- | :--- | :--- | :--- |
| C4: contexto, contenedores y componentes | Structurizr DSL | `report/assets/diagrams/structurizr/workspace.dsl` | Con [Structurizr Lite](https://docs.structurizr.com/lite): `docker run -it --rm -p 8080:8080 -v "$PWD/report/assets/diagrams/structurizr:/usr/local/structurizr" structurizr/lite` |
| Clases y entidad-relación | PlantUML | `report/assets/diagrams/plantuml/*.puml` | `make plantuml` |
| Design-Level EventStorming | Mermaid | `report/assets/diagrams/mermaid/*.mmd` | `make mermaid` |

`workspace.json` guarda la posición de cada elemento y el trazo de cada flecha de las vistas C4; sin él, Structurizr Lite reordena los diagramas automáticamente.

## Flujo de trabajo

El repositorio sigue GitFlow: `main` contiene versiones entregadas, `develop` integra el trabajo y cada cambio se hace en una rama `feature/*` que se integra con Pull Request. Los commits siguen [Conventional Commits](https://www.conventionalcommits.org/) y las versiones, [SemVer](https://semver.org/lang/es/); cada cambio relevante se registra en `report/front-matter/02-version-history.md`.

## Equipo FuturosSeniors

| Código | Integrante |
| :--- | :--- |
| U202317807 | Fernandez Seer, Mario Alonso |
| U202418755 | Santiago Atanacio, Jairo Mathias |
| U202316845 | Almandroz Carbajal, Pierina Marysabel |
| U202418405 | Condor Sandoval, Jean Pierre |
| U202322404 | Domenack Angeles, Miguel (hasta el Sprint 1) |

Docente: Velasquez Nuñez, Angel Augusto.
