#### 5.2.3. Sprint 3

##### 5.2.3.1. Sprint Planning 3

El Sprint 3 se dedicó a construir la primera versión de la RESTful API de Destilatech (repositorio `destilatech-platform`), con ASP.NET Core, Entity Framework Core y MySQL, y a publicar las versiones 2.0.0 y 2.1.0 de la aplicación web (la 2.1.0 ya consume la API) y una nueva versión de la landing page. La API implementa los siete *bounded contexts* del diseño de software (capítulo IV), incluido el contexto IAM que el Sprint 2 había dejado fuera, y expone 13 de las 14 historias técnicas de la épica EP10, incluidos el servicio simulador de lecturas IoT (US64) y el endpoint de resumen del dashboard (US65). La historia US26 (autenticación) no se incluyó en el sprint y vuelve al Product Backlog. Al cierre del sprint la API está desplegada en Render, con su base de datos MySQL en Railway, y la aplicación web 2.1.0 consume esa API desde Firebase Hosting (sección 5.2.3.7).

**Tabla 23**

*Resumen de la reunión de Sprint Planning 3*

| Sprint # | Sprint 3 |
| :---------- | :------------------------------------------- |
| **Antecedentes de la planificación** | Con la primera versión de la aplicación web publicada en el Sprint 2 y consumiendo un Fake API, el equipo decidió construir la RESTful API real con las historias técnicas de la épica EP10 y, una vez lista, conectar la aplicación web a la API y mejorar la landing page. Los contextos se repartieron según el diseño de software: Shared Kernel, configuración de la API y Alerts & Notifications; Inventory & Stock y Production & Monitoring; Orders & Replenishment y Analytics & Estimations; e IAM y Billing. |
| **Fecha** | 2026-10-27 |
| **Hora** | 03:15 p.m. |
| **Ubicación** | Reunión virtual (Discord y WhatsApp). Durante el sprint, el equipo se coordinó cada dos días por los mismos medios. |
| **Preparada por** | Santiago Atanacio, Jairo Mathias |
| **Asistentes** | Fernandez Seer, Mario Alonso; Santiago Atanacio, Jairo Mathias; Almandroz Carbajal, Pierina Marysabel; Condor Sandoval, Jean Pierre |
| **Sprint 2 Review Summary** | La aplicación web se publicó en Firebase Hosting y consume el Fake API publicado en Render, con los perfiles de demostración de productor y comercializador y seis de los siete *bounded contexts*; el contexto IAM quedó fuera del alcance. El Sprint Backlog 2 cerró con las 40 tarjetas del tablero en DONE - SPRINT 2. [COMPLETAR: retroalimentación del *product owner* sobre la revisión] |
| **Sprint 2 Retrospective Summary** | Funcionó el reparto por *bounded context*, con una rama `feature/*` por contexto y los commits registrados desde la cuenta de cada integrante (sección 5.2.2.8), y la aplicación web quedó desplegada en Firebase Hosting. A mejorar: las pruebas funcionales no dejaron evidencia en los repositorios, el contexto IAM quedó fuera de la aplicación y la pasarela de pago seguía sin definirse. Para el Sprint 3 se mantuvo el reparto por contexto, se incorporaron IAM y Billing en la API y el pago con Stripe en modo de prueba. |
| **Sprint 3 Goal** | *Our focus is on* que los desarrolladores del equipo cuenten con la primera versión de la RESTful API de Destilatech, con los recursos de producción, inventario, pedidos, alertas, estimaciones, usuarios y suscripciones que necesita la aplicación web. *We believe it delivers* una API documentada, con su propia base de datos, que reemplaza al Fake API y permite que los productores y los comercializadores conserven sus datos y reciban alertas generadas por el sistema. *This will be confirmed when* un desarrollador del equipo pueda iniciar la API y su base de datos MySQL con un solo comando, abrir su documentación interactiva en Scalar y consumir los endpoints de las 13 historias técnicas del sprint sin intervención de quien los implementó. |
| **Sprint 3 Velocity** | 364 horas de trabajo planificadas por el equipo. |
| **Sum of Story Points** | 37 Story Points (13 historias técnicas), más tareas de soporte, de mejora de la aplicación web y de la landing page sin historia de usuario. |
