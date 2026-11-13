### Anexo D. Evaluación de User Experience según heurísticas

*Evaluación heurística del producto Destilatech, revisada y aprobada por el grupo auditor Developers el 13 de noviembre de 2026, con el formato del Anexo D del Project Statement. No se basa en las entrevistas de validación: esas sesiones se evalúan aparte en la sección 5.3.3 (Tabla 33).*

| Dato | Valor |
| :---------- | :---------- |
| Carrera | Ingeniería de Software |
| Curso | Aplicaciones Web (1ASI0730) |
| Sección | NRC 8084 |
| Profesores | Todos |
| Auditor | Developers |
| Cliente(s) | Elizabeth Noelia Apaza Bocanegra; Mathias Andree Cardenas Huaman; Leonardo Gabriel López Torres; Elias Daniel Ramos Cerdan; Fabián Jesus Sandoval Cueto |

**Sitio o aplicación a evaluar.** La landing page (website) de Destilatech (https://upc-pre-202620-1asi0730-2620-8084-desti.github.io/destilatech-website/) y la aplicación web (https://destilatech-webapp.web.app), con los perfiles de demostración de productor (Bodega Santa Rosa) y de comercializador (Licorería El Cóndor), en inglés y en español.

**Cómo se evaluó.** Recorrido de las pantallas en navegador de escritorio (1440 x 900 px) y en ancho móvil (375 px), con inspección del código renderizado para revisar nombres accesibles, idioma del documento, puntos de referencia (*landmarks*) y desbordamiento horizontal. Para no alterar los datos de demostración usados en el video, no se enviaron formularios ni se ejecutaron acciones que cambian datos (avanzar etapa de lote, crear producto, pedido o reposición, cancelar suscripción).

**Tareas evaluadas.**

1. Entender qué ofrece Destilatech y qué plan conviene, en la landing page (recorrido completo y revisión de precios y CTA).
2. Llegar a la contratación del plan desde la landing page y revisar la pantalla de suscripción (sin ejecutar el pago simulado).
3. Revisar la gestión de lotes del productor (listado, KPI, acciones disponibles; sin avanzar etapas).
4. Revisar las lecturas simuladas del monitoreo IoT y las alertas (productor).
5. Revisar el inventario, los pedidos, los clientes y la reposición (comercializador y productor; sin registrar movimientos ni pedidos).
6. Revisar los indicadores históricos y los botones de exportación CSV (presencia y ubicación; no se descargó el archivo).

**Tareas no evaluadas.**

1. Inicio de sesión y recuperación de contraseña: la API aún no autentica solicitudes (US26) y el perfil se elige con el selector de demostración.
2. Conexión con sensores IoT físicos: las lecturas son simuladas.
3. Configuración del umbral de stock bajo y de los rangos normales de las variables del proceso.
4. Ejecución real de altas, avanzar etapa de lote, pago simulado y descarga del CSV (verificar en las sesiones de validación con usuarios).

**Escala de severidad.**

- **Nivel 1, problema superficial:** el usuario lo supera fácilmente u ocurre con muy poca frecuencia; no necesita corregirse salvo que haya tiempo disponible.
- **Nivel 2, problema menor:** ocurre un poco más seguido o es algo más difícil de superar; prioridad baja para el siguiente *release*.
- **Nivel 3, problema mayor:** ocurre con frecuencia o los usuarios no logran resolverlo; es importante corregirlo, prioridad alta.
- **Nivel 4, problema muy grave:** error de gran impacto que impide continuar; es imperativo corregirlo antes del lanzamiento.

No se encontraron problemas de nivel 4.

**Tabla D1**

*Resumen de problemas encontrados en la evaluación*

| # | Problema | Escala de severidad | Heurística / principio violado(a) |
| :----------: | :---------- | :----------: | :---------- |
| 1 | La aplicación web se muestra en blanco varios segundos en la primera carga, sin indicador de progreso | 3 | Usabilidad: visibilidad del estado del sistema |
| 2 | El dashboard del productor muestra valores provisionales (ceros, "no tienes lotes activos", "Variable 23") antes de cargar los datos reales | 3 | Usabilidad: visibilidad del estado del sistema; Arquitectura de información: creíble |
| 3 | Los CTA "Subscribe" de la landing page indican un plan (parámetro `plan`) pero la pantalla de suscripción no lo preselecciona | 2 | Usabilidad: consistencia y estándares; coincidencia entre el sistema y el mundo real |
| 4 | Los botones "Subscribe" de la pantalla de planes tienen el mismo nombre accesible y no identifican el plan | 2 | Diseño inclusivo: proporciona experiencias comparables; Arquitectura de información: accesible |
| 5 | El dashboard del comercializador sugiere reponer un producto ("Reponer en 6 días") mientras "Stock bajo" marca 0 y la pantalla de reposición dice que no hay productos pendientes | 2 | Usabilidad: consistencia y estándares; Arquitectura de información: usable |
| 6 | Las acciones de las tablas son solo íconos (avanzar etapa, monitoreo, recibir) y dependen de *tooltips* | 2 | Usabilidad: reconocer en lugar de recordar; Diseño inclusivo: considera la situación del usuario |
| 7 | Los datos de demostración contienen valores de prueba y fechas incoherentes (orden "Solicitada" con llegada en el pasado y anterior a su registro, cliente "JEAN", contacto "123456789") | 1 | Arquitectura de información: creíble |
| 8 | No hay enlace de salto al contenido (*skip link*) en la landing page ni en la aplicación web | 1 | Arquitectura de información: accesible; Diseño inclusivo: ofrece opciones |
| 9 | Marcado con botón dentro de enlace (`<a><button>`) en las acciones de monitoreo de la tabla de lotes | 1 | Usabilidad: consistencia y estándares; Arquitectura de información: accesible |
| 10 | En "Lotes", la tarjeta "En destilación" muestra el subtítulo "1 en reposo", que describe otra etapa | 1 | Usabilidad: coincidencia entre el sistema y el mundo real |
| 11 | Los testimonios de la landing page usan nombres inventados (rotulados como ilustrativos) | 1 | Arquitectura de información: creíble |

**Problema #1:** Pantalla en blanco en la primera carga de la aplicación web. **Severidad:** 3. **Heurística violada:** Usabilidad, visibilidad del estado del sistema. **Problema:** al abrir https://destilatech-webapp.web.app (raíz y `/billing/plans`) la pantalla quedó en blanco, con solo el fondo, sin pantalla de carga ni mensaje. La duración varía: superó los 10 s en la primera revisión y fue menor a 1 s al repetir la prueba con la API ya activa. Una persona que llega desde el botón "Subscribe" de la landing page puede pensar que el enlace está roto. No se aisló la causa (carga diferida de módulos o arranque en frío de la platform alojada). La Figura 211 muestra la pantalla a los 0,3 s de abrir la raíz. **Recomendación:** mostrar un *splash* o esqueleto de carga desde el HTML inicial (antes de que Vue monte la aplicación), con el logotipo y un mensaje de "Cargando"; precargar los módulos de la ruta de entrada.

**Problema #2:** Valores provisionales en el dashboard del productor. **Severidad:** 3. **Heurística violada:** Usabilidad, visibilidad del estado del sistema; Arquitectura de información, creíble. **Problema:** al entrar a "Dashboard", durante la carga se mostraron "0 en fermentación", "0 pedidos por despachar", "You have no active batches" y alertas recientes como "Variable 23 is outside its configured range"; segundos después los mismos elementos cambian a 5 lotes activos, 3 pedidos y "Humidity of batch LT-2026-019 read 80 %...". El estado vacío es indistinguible de un estado real y puede llevar a una decisión equivocada. La Figura 212 muestra el dashboard a los 0,6 s de entrar. El grupo auditor observó el mismo efecto en el gráfico "Movimiento de inventario" del comercializador, que aparece vacío hasta que cargan los movimientos. **Recomendación:** mostrar esqueletos (*skeletons*) hasta que lleguen los datos y reservar el mensaje de estado vacío para respuestas vacías confirmadas; no renderizar mensajes de alerta hasta resolver el nombre del lote y de la variable.

**Problema #3:** El plan elegido en la landing page no se refleja en la suscripción. **Severidad:** 2. **Heurística violada:** Usabilidad, consistencia y estándares. **Problema:** los botones "Subscribe" de la landing page apuntan a `/billing/plans?plan=basic|professional|enterprise`, pero al abrir `?plan=basic` la pantalla mostró los tres planes sin resaltar ni preseleccionar el Básico (el perfil de demostración ya tenía el plan Profesional activo, por lo que el comportamiento esperado con una cuenta sin plan no pudo comprobarse). La persona debe volver a elegir el plan. Ver la Figura 213. **Recomendación:** resaltar el plan recibido por parámetro y abrir directamente el formulario de pago; si ya hay un plan activo, indicarlo con un mensaje que explique por qué no se preselecciona.

**Problema #4:** Botones de plan sin nombre accesible diferenciado. **Severidad:** 2. **Heurística violada:** Diseño inclusivo, experiencias comparables; Arquitectura de información, accesible. **Problema:** los botones de los planes Básico y Enterprise exponen el mismo nombre accesible ("Subscribe"); una persona que usa lector de pantalla no distingue a qué plan corresponde cada botón. Ver la Figura 213. **Recomendación:** `aria-label` o texto oculto del tipo "Suscribirse al plan Básico", más `aria-describedby` hacia el precio.


**Problema #5:** Señales de reposición contradictorias en el dashboard del comercializador. **Severidad:** 2. **Heurística violada:** Usabilidad, consistencia y estándares; Arquitectura de información, usable. **Problema:** "Stock bajo: 0, Todo en orden" y la pantalla de reposición ("No hay productos pendientes de reposición") conviven con "Reposición prioritaria: Pisco Quebranta Santa Rosa, Reponer en 6 días, 30 uds." La estimación predictiva y el umbral de stock usan criterios distintos y la interfaz no lo explica. Ver las Figuras 214 y 216. **Recomendación:** rotular la sugerencia como "Estimación según tu ritmo de ventas" y explicar la diferencia con el umbral; si corresponde, listar también ese producto en las sugerencias de la pantalla de reposición.

**Problema #6:** Acciones de tabla solo con íconos. **Severidad:** 2. **Heurística violada:** Usabilidad, reconocer en lugar de recordar; Diseño inclusivo, considera la situación del usuario. **Problema:** en la tabla de lotes (y de manera similar en reposición) las acciones "Avanzar etapa" e "IoT Monitoring" son botones circulares con ícono; el nombre solo está en `aria-label` y en *tooltip*. En pantallas táctiles no hay *hover*, y "Avanzar etapa" es una acción que cambia el estado del lote. No se verificó si pide confirmación porque no se ejecutó. Ver la Figura 215. **Recomendación:** mostrar texto junto al ícono en móvil o usar un menú de acciones con etiquetas visibles, y confirmar el avance de etapa con un diálogo que nombre el lote y la nueva etapa.

**Problema #7:** Datos de demostración poco creíbles. **Severidad:** 1. **Heurística violada:** Arquitectura de información, creíble. **Problema:** en "Reposición" del comercializador, la orden RP-0002 figura como "Solicitada" con llegada "03 oct 2026" y fecha de registro 12 nov 2026, y RP-0001 llega el 26 sep 2026 con registro 12 nov 2026; hay un proveedor con contacto "123456789" y un cliente llamado "JEAN" entre los pedidos recientes. Resta credibilidad en la demostración. Ver las Figuras 214 y 216. **Recomendación:** limpiar los registros de prueba antes de las demostraciones, validar que la fecha estimada de llegada no sea anterior a la fecha del pedido y resaltar las órdenes vencidas.

**Problema #8:** Sin enlace de salto al contenido. **Severidad:** 1. **Heurística violada:** Arquitectura de información, accesible; Diseño inclusivo, ofrece opciones. **Problema:** ni la landing page ni la aplicación web tienen *skip link*; una persona que navega con teclado debe recorrer toda la barra de navegación y el menú lateral en cada página (ambos sí tienen `<main>`, `<nav>` y un solo `<h1>` por página, y `lang` correcto). **Recomendación:** agregar como primer elemento focalizable un enlace "Saltar al contenido" hacia `<main>`.

**Problema #9:** Botón dentro de enlace. **Severidad:** 1. **Heurística violada:** Usabilidad, consistencia y estándares; Arquitectura de información, accesible. **Problema:** en la tabla de lotes el ícono de monitoreo es un `<button>` anidado en un `<a>`, marcado que no es válido y duplica la parada de tabulación. **Recomendación:** usar solo el enlace con apariencia de botón (o solo el botón con navegación programática).

**Problema #10:** Subtítulo que no corresponde a la tarjeta. **Severidad:** 1. **Heurística violada:** Usabilidad, coincidencia entre el sistema y el mundo real. **Problema:** en "Gestión de lotes", la tarjeta "En destilación: 1" muestra el subtítulo "1 en reposo", que describe otra etapa del proceso (Figura 215). **Recomendación:** mostrar el desglose en tarjetas separadas o rotular el subtítulo ("Además, 1 en reposo").

**Problema #11:** Testimonios con nombres inventados. **Severidad:** 1. **Heurística violada:** Arquitectura de información, creíble. **Problema:** la sección "What our customers say" presenta tres testimonios con nombres ficticios; la landing page los rotula como "Illustrative testimonials based on the needs identified in our interviews", pero la etiqueta es discreta y el formato visual es el de opiniones reales. **Recomendación:** mantener el rótulo en un lugar visible junto a las tarjetas o sustituir los testimonios por citas reales de las entrevistas con autorización de los participantes.

**Figura 211**

*Primera carga de la aplicación web*

<p align="center"><img src="assets/annex-d/webapp-first-load-blank.png" alt="Primera carga de la aplicación web" width="720"></p>

*Nota.* Captura propia de la aplicación web publicada (https://destilatech-webapp.web.app), 13 de noviembre de 2026.

*Descripción.* Al abrir https://destilatech-webapp.web.app solo se ve el color de fondo, sin logotipo, mensaje ni indicador de carga (problema #1).

**Figura 212**

*Dashboard del productor durante la carga de los datos*

<p align="center"><img src="assets/annex-d/producer-dashboard-provisional.png" alt="Dashboard del productor durante la carga de los datos" width="720"></p>

*Nota.* Captura propia de la aplicación web publicada (https://destilatech-webapp.web.app), 13 de noviembre de 2026.

*Descripción.* Antes de recibir las respuestas de la API, las tarjetas muestran "0 en fermentación", "0 productos" y "0 por despachar", y los paneles dicen "No tienes lotes activos" y "Aún no hay actividad registrada"; segundos después aparecen 5 lotes activos, 2349 unidades en inventario y 4 alertas (problema #2).

**Figura 213**

*Pantalla de suscripción abierta con el parámetro plan=basic*

<p align="center"><img src="assets/annex-d/billing-plans-basic.png" alt="Pantalla de suscripción abierta con el parámetro plan=basic" width="720"></p>

*Nota.* Captura propia de la aplicación web publicada (https://destilatech-webapp.web.app), 13 de noviembre de 2026.

*Descripción.* La ruta /billing/plans?plan=basic muestra los tres planes sin resaltar el Básico; los botones de los planes Básico y Empresarial tienen el mismo texto, "Suscribirme" (problemas #3 y #4).

**Figura 214**

*Dashboard del comercializador*

<p align="center"><img src="assets/annex-d/retailer-dashboard.png" alt="Dashboard del comercializador" width="720"></p>

*Nota.* Captura propia de la aplicación web publicada (https://destilatech-webapp.web.app), 13 de noviembre de 2026.

*Descripción.* La tarjeta "Stock bajo" marca 0 y "Todo en orden", mientras "Reposición prioritaria" sugiere reponer 30 unidades de Pisco Quebranta Santa Rosa en 6 días (problema #5); entre los pedidos recientes figura el cliente de prueba "JEAN" (problema #7).

**Figura 215**

*Gestión de lotes del productor*

<p align="center"><img src="assets/annex-d/batches-table.png" alt="Gestión de lotes del productor" width="720"></p>

*Nota.* Captura propia de la aplicación web publicada (https://destilatech-webapp.web.app), 13 de noviembre de 2026.

*Descripción.* La columna Acciones muestra solo íconos para avanzar la etapa y abrir el monitoreo IoT (problema #6); la tarjeta "En destilación: 1" tiene el subtítulo "1 en reposo" (problema #10).

**Figura 216**

*Reposición del comercializador*

<p align="center"><img src="assets/annex-d/retailer-replenishment.png" alt="Reposición del comercializador" width="720"></p>

*Nota.* Captura propia de la aplicación web publicada (https://destilatech-webapp.web.app), 13 de noviembre de 2026.

*Descripción.* Las sugerencias dicen "No hay productos pendientes de reposición", en contraste con el dashboard (problema #5); la orden RP-0002 está "Solicitada" con registro el 12 nov 2026 y llegada el 03 oct 2026, y un proveedor tiene el contacto "123456789" (problema #7).

**Aspectos que funcionaron bien.**

- Los precios de la landing page (S/ 60, S/ 110 y S/ 200 al mes) coinciden con los de la pantalla de suscripción.
- El cambio de idioma EN/ES y de perfil Productor/Comercializador es inmediato, el idioma se conserva al cambiar de pantalla y el atributo `lang` del documento se actualiza.
- No hay desbordamiento horizontal en ancho móvil (375 px) en la landing page ni en las pantallas revisadas de la aplicación.
- Las tablas muestran ordenamiento, filtros por estado y botón "Exportar CSV" visible en inventario, pedidos, clientes e indicadores.
- Los estados de lotes, inventario y pedidos usan etiquetas de texto además del color.

