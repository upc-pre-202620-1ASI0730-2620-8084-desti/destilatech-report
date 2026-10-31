## Project Report Collaboration Insights

A continuación, se detallan los repositorios utilizados a lo largo del proyecto.

#### Link del repositorio del Reporte

- [destilatech-report](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-report)

#### Link del repositorio del Website

- [destilatech-website](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-website)

#### Link del Website

- [destilatech-website](https://upc-pre-202620-1asi0730-2620-8084-desti.github.io/destilatech-website/)

### Desarrollo de Actividades

A lo largo del ciclo de vida del proyecto, el equipo mantuvo una comunicación constante mediante canales de voz en Discord para las reuniones virtuales y las coordinaciones generales, y mediante WhatsApp para los avisos cotidianos. La carga de trabajo del informe y del desarrollo del software se distribuyó de forma equitativa, con plazos adecuados para cada iteración (AV1 y TB1). Las sesiones presenciales fueron clave para recibir la retroalimentación del docente, resolver impedimentos técnicos y optimizar el avance frente a los horarios limitados del grupo. Un integrante, Domenack Angeles, Miguel, se retiró del equipo después del Sprint 1; desde el Sprint 2 el equipo está conformado por cuatro integrantes y las tareas se redistribuyeron entre ellos.

El trabajo siguió el flujo GitFlow descrito en la sección 5.1.2: una rama `feature/*` por actividad, integración a `develop` mediante Pull Request y mensajes de commit con el formato Conventional Commits desde el Sprint 2. La Tabla 1 resume, por actividad del ciclo de vida (documentación, desarrollo, ejecución, pruebas y despliegue), dónde se registró la evidencia y quiénes la produjeron.

**Tabla 1**

*Evidencia de las actividades del ciclo de vida por repositorio*

| Actividad | Qué se hizo | Repositorio y ramas | Commits de referencia | Responsables | Sección del informe |
| :---------- | :------------------------------------------- | :---------------------------------- | :------------------------------------------- | :--------------------- | :---------- |
| Documentación | Redacción del informe: capítulos I a V, Sprint Planning, Sprint Backlogs, evidencias y anexos. Cada capítulo se trabajó en una rama `feature/*` y se integró a `develop` mediante Pull Request. | `destilatech-report`: `feature/product-design`, `feature/sprint2`, `develop`, `main` | [`62f8e46`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-report/commit/62f8e46) (lenguaje ubicuo), [`69897f8`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-report/commit/69897f8) (secciones 4.6 a 4.8), [`b3c44df`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-report/commit/b3c44df) (Sprint Backlog 2), [`0094f16`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-report/commit/0094f16) (evidencia de desarrollo), [`b811839`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-report/commit/b811839) (evidencia de ejecución), [`8c09a2e`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-report/commit/8c09a2e) (analíticos del Sprint 2) | Los cuatro integrantes del equipo; en el AV1 también Domenack Angeles, Miguel (revisión de calidad y perfiles, `bebfabb`, `265d16a`) | Capítulos I a V y Anexos |
| Desarrollo de la Landing Page | Implementación de las secciones de la landing page (estructura, estilos, internacionalización, pestañas de funcionalidades, adaptabilidad móvil, testimonios y pie de página). | `destilatech-website`: `feature/landing-structure`, `feature/i18n`, `feature/responsive-design`, `feature/platform-features-tabs`, `develop`, `main` | [`5d16532`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-website/commit/5d16532) (estructura), [`5be25df`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-website/commit/5be25df) (adaptabilidad móvil), [`798b3b1`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-website/commit/798b3b1) (i18n), [`ca54689`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-website/commit/ca54689) (inglés como idioma por defecto), [`17fd993`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-website/commit/17fd993) (testimonios), [`c636199`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-website/commit/c636199) (pie de página) | Santiago Atanacio (Jairo), Fernandez Seer (Mario), Almandroz Carbajal (Pierina), Condor Sandoval (Jean Pierre) | 5.2.1.3 y 5.2.1.4 |
| Desarrollo de la Web Application | Implementación de la aplicación web por *bounded context*: Shared Kernel, Fake API, internacionalización, Billing, Production & Monitoring, Inventory & Stock, Orders & Replenishment, Alerts & Notifications y Analytics & Estimations. | `destilatech-webapp`: `feature/shared`, `feature/fake-api`, `feature/locales`, `feature/billing`, `feature/production-monitoring`, `feature/inventory-stock`, `feature/orders-replenishment`, `feature/alerts-notifications`, `feature/analytics-estimations`, `develop` | [`2eab4bb`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-webapp/commit/2eab4bb) (Shared Kernel), [`c3d927d`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-webapp/commit/c3d927d) (Fake API), [`58bd501`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-webapp/commit/58bd501) (Billing), [`c8be6ef`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-webapp/commit/c8be6ef) (producción), [`353f6c5`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-webapp/commit/353f6c5) (inventario), [`7312132`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-webapp/commit/7312132) (pedidos), [`a624859`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-webapp/commit/a624859) (alertas), [`c7eb23e`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-webapp/commit/c7eb23e) (analíticos) | Santiago Atanacio (Jairo), Fernandez Seer (Mario), Almandroz Carbajal (Pierina), Condor Sandoval (Jean Pierre) | 5.2.2.3 y 5.2.2.4 |
| Desarrollo de los Web Services | Configuración inicial de la API en ASP.NET Core: paquetes de OpenAPI, Entity Framework Core y MySQL, contexto de base de datos, unidad de trabajo, repositorio base, convenciones de nombres y patrón `Result` del *Shared Kernel*. Se retoma en el Sprint 3. | `destilatech-platform`: `feature/project-configuration`, `feature/shared`, `develop` | [`13fc175`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-platform/commit/13fc175) (paquetes), [`49c4f98`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-platform/commit/49c4f98) (`AppDbContext`), [`f9a9a88`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-platform/commit/f9a9a88) (unidad de trabajo), [`3cbe420`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-platform/commit/3cbe420) (patrón `Result`), [`8882a2e`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-platform/commit/8882a2e) (integración a `develop`) | Santiago Atanacio (Jairo) | Sprint 3 |
| Ejecución | Ejecución local de la aplicación con el Fake API (`json-server`) y registro de capturas y videos de navegación de la landing page y de la aplicación web, con los dos perfiles de demostración. | `destilatech-report`: `assets/webapp/`, enlaces de video del Anexo B | [`3bc139f`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-report/commit/3bc139f) (evidencia de ejecución del Sprint 2), [`6028978`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-report/commit/6028978) (enlaces de los videos) | Fernandez Seer (Mario), Santiago Atanacio (Jairo) | 5.2.1.5 y 5.2.2.5 |
| Pruebas funcionales | Pruebas manuales de los módulos de la aplicación web según los criterios de aceptación; los defectos se comunicaron al equipo por Discord antes de la revisión del sprint. | Sin commits: el resultado se refleja en las tareas de pruebas del Sprint Backlog 2 | No aplica (las tareas de pruebas no generan commits; desde el Sprint 3 los casos de prueba se registran en el repositorio) | Cada integrante, sobre los módulos que desarrolló | 5.2.2.3 |
| Despliegue | Publicación de la landing page en GitHub Pages, de la aplicación web en Firebase Hosting y del Fake API en Render. | `destilatech-website` (`main`), `destilatech-webapp` (`develop`, `main`) | [`34c7c91`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-webapp/commit/34c7c91) (configuración de Firebase), [`ed3b72a`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-webapp/commit/ed3b72a) (API de producción en Render), [`000428e`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-webapp/commit/000428e) (`firebase.json`), [`3863ecc`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-report/commit/3863ecc) (documentación del despliegue) | Santiago Atanacio (Jairo) | 5.1.4, 5.2.1.7 y 5.2.2.7 |

*Nota.* Elaboración propia a partir del historial de commits de los cuatro repositorios de la organización (2026). Los identificadores enlazan al commit en GitHub.

---

### Evidencias de Colaboración (GitHub Insights)

Las capturas se presentan por entrega: las del AV1 corresponden al avance del Sprint 1 y las del TB1 al avance hasta el Sprint 2.

#### 1. Analíticas Globales del Equipo

**A. Pulse Insights (actividad general del repositorio del informe)**

**Figura 1**

*Pulse Insights del repositorio del informe (AV1)*

<p align="center"><img src="../assets/md-images-front-matter/grupal-commit.png" alt="Pulse Insights del repositorio del informe (AV1)" width="700"></p>

*Nota.* Captura de GitHub Insights (2026).

*Descripción.* Resumen de actividad entre el 18 de agosto y el 18 de septiembre de 2026: 4 Pull Requests activas (2 integradas y 2 abiertas) y ninguna incidencia. Cinco autores enviaron 56 commits a `main` y 105 commits a todas las ramas.

**Figura 2**

*Pulse Insights del repositorio del informe (TB1)*

<p align="center"><img src="../assets/commits/tb1-pulse.png" alt="Pulse Insights del repositorio del informe (TB1)" width="700"></p>

*Nota.* Captura de GitHub (2026).

*Descripción.* Resumen de actividad entre el 5 de septiembre y el 5 de octubre de 2026: 8 Pull Requests activas (6 integradas y 2 abiertas) y ninguna incidencia. Seis autores enviaron 122 commits a `main` y 196 commits a todas las ramas; en `main` cambiaron 177 archivos, con 5114 adiciones y 66 eliminaciones.


**B. Contributors Insights (evolución de aportes)**

**Figura 3**

*Contributors Insights del repositorio del informe (AV1)*

<p align="center"><img src="../assets/commits/contributors.png" alt="Contributors Insights del repositorio del informe" width="700"></p>

*Nota.* Captura de GitHub Insights (2026).

*Descripción.* Aportes de los cinco integrantes al repositorio del informe entre el 31 de agosto y el 28 de septiembre de 2026, con pico de actividad en torno al 14 de septiembre. Msa-ware registra 77 commits (4,736 líneas añadidas y 506 eliminadas), pierinaaa29 25 (398 y 40), Jean-pcs 18 (1,198 y 2,444), MrBaru 8 (557 y 11) y midoan0805 7 (3,204 y 63).

**Figura 4**

*Contributors Insights del repositorio del informe (TB1)*

<p align="center"><img src="../assets/commits/tb1-contributors.png" alt="Contributors Insights del repositorio del informe (TB1)" width="700"></p>

*Nota.* Captura de GitHub (2026).

*Descripción.* Aportes al repositorio del informe en el último mes, hasta el 5 de octubre de 2026, con la mayor parte de la actividad en la semana del 14 de septiembre. La captura muestra a los cuatro primeros aportantes por número de commits: Msa-ware con 65 commits (4,197 líneas añadidas y 398 eliminadas), pierinaaa29 con 25 (398 y 40), Jean-pcs con 18 (1,198 y 2,444) y MrBaru con 7 (167 y 9).


---

#### 2. Evidencias Individuales (Commits por Integrante)

A continuación, se detalla el progreso y la constancia de los *commits* realizados por cada miembro a lo largo del ciclo.

**Fernandez Seer, Mario Alonso**

**Figura 5**

*Commits de Fernandez Seer, Mario Alonso (AV1)*

<p align="center"><img src="../assets/md-images-front-matter/mario-commit.png" alt="Commits de Fernandez Seer, Mario Alonso (AV1)" width="600"></p>

*Nota.* Captura de GitHub (2026).

*Descripción.* Historial de commits del 4 y el 16 de septiembre de 2026, con los mensajes «Updated team profiles and add startup overview (Chapter one)», «add segment 1 producer interview» (dos veces) y «Add files via upload».

**Figura 6**

*Commits de Fernandez Seer, Mario Alonso (TB1)*

<p align="center"><img src="../assets/commits/tb1-commits-mario.png" alt="Commits de Fernandez Seer, Mario Alonso (TB1)" width="600"></p>

*Nota.* Captura de GitHub (2026).

*Descripción.* Historial de commits del 5 de octubre de 2026, con la creación y edición de la sección 5.2.2.5 (Execution Evidence), el cierre de la sección 5.2.2.4 (Development Evidence), la adición de figuras y la revisión de los enlaces de los videos en el README.


**Santiago Atanacio, Jairo Mathias**

**Figura 7**

*Commits de Santiago Atanacio, Jairo Mathias (AV1)*

<p align="center"><img src="../assets/md-images-front-matter/jairo-commit1.png" alt="Commits de Santiago Atanacio, Jairo Mathias (AV1)" width="600"></p>

*Nota.* Captura de GitHub (2026).

*Descripción.* Historial de commits del 15 y el 17 de septiembre de 2026, con mensajes sobre el Big Picture EventStorming, la descripción del Ubiquitous Language, actualizaciones del README y de la URL del video.

**Figura 8**

*Commits de Santiago Atanacio, Jairo Mathias (TB1)*

<p align="center"><img src="../assets/commits/tb1-commits-jairo.png" alt="Commits de Santiago Atanacio, Jairo Mathias (TB1)" width="600"></p>

*Nota.* Captura de GitHub (2026).

*Descripción.* Historial de commits del 5 de octubre de 2026, con el cierre de las secciones 5.2.2.6, 5.2.2.7 y 5.2.2.8, la integración de la rama `feature/sprint2` en `develop`, el retiro del Anexo B, la corrección del texto de planificación, la carga de archivos y la revisión de los detalles de despliegue y de las URL de la API en el README.


**Almandroz Carbajal, Pierina Marysabel**

**Figura 9**

*Commits de Almandroz Carbajal, Pierina Marysabel (AV1)*

<p align="center"><img src="../assets/md-images-front-matter/pierina-commit.png" alt="Commits de Almandroz Carbajal, Pierina Marysabel (AV1)" width="600"></p>

*Nota.* Captura de GitHub (2026).

*Descripción.* Historial de commits del 16 de septiembre de 2026, con los diagramas de clases de seis contextos del dominio, la introducción al diseño orientado a objetos y diagramas de Event Storming.

**Figura 10**

*Commits de Almandroz Carbajal, Pierina Marysabel (TB1)*

<p align="center"><img src="../assets/commits/tb1-commits-pierina.png" alt="Commits de Almandroz Carbajal, Pierina Marysabel (TB1)" width="600"></p>

*Nota.* Captura de GitHub (2026).

*Descripción.* Historial de commits del 5 de octubre de 2026, con la creación de la sección 5.2.2.4 (Development Evidence), las tablas del repositorio destilatech-webapp, las observaciones de los commits y la información e imágenes de la sección.


**Condor Sandoval, Jean Pierre**

**Figura 11**

*Commits de Condor Sandoval, Jean Pierre (AV1)*

<p align="center"><img src="../assets/md-images-front-matter/jean-commit.png" alt="Commits de Condor Sandoval, Jean Pierre (AV1)" width="600"></p>

*Nota.* Captura de GitHub (2026).

*Descripción.* Historial de commits del 15 y el 17 de septiembre de 2026, con mensajes sobre el contenido del capítulo 4, el mock-up de la landing page, las User Personas, la User Task Matrix y el mapa de empatía, además de integraciones de la rama `develop`.

**Figura 12**

*Commits de Condor Sandoval, Jean Pierre (TB1)*

<p align="center"><img src="../assets/commits/tb1-commits-jean.png" alt="Commits de Condor Sandoval, Jean Pierre (TB1)" width="450"></p>

*Nota.* Captura de GitHub (2026).

*Descripción.* Historial de tres commits del 5 de octubre de 2026 con actualizaciones del README del informe.


**Domenack Angeles, Miguel**

**Figura 13**

*Commits de Domenack Angeles, Miguel (AV1)*

<p align="center"><img src="../assets/md-images-front-matter/miguel-commit.png" alt="Commits de Domenack Angeles, Miguel (AV1)" width="600"></p>

*Nota.* Captura de GitHub (2026).

*Descripción.* Historial de commits del 16 y el 18 de septiembre de 2026, con la integración de la Pull Request #2 de la rama `feature/product-design`, las secciones de diseño de producto, los diagramas de arquitectura y la revisión de detalles menores.

Para el TB1 no se incluye una captura de commits de Domenack Angeles, Miguel, porque se retiró del equipo después del Sprint 1.


# Contenido
