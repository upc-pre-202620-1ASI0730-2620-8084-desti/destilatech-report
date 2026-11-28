##### 5.2.4.8. Team Collaboration Insights during Sprint

En el Sprint 4 los cuatro integrantes registraron commits desde su propia cuenta en los tres repositorios, con Conventional Commits y una rama `feature/*` por repositorio, entre el 24 y el 27 de noviembre de 2026. La tabla resume los commits únicos de la sección 5.2.4.4 por integrante y por repositorio; los commits de integración (*merge*) de los Pull Requests no se cuentan.

**Tabla 40**

*Commits del Sprint 4 por integrante y por repositorio*

| Team Member (Last Name, First Name) | GitHub Username | destilatech-platform | destilatech-webapp | destilatech-website | Total |
| :---------- | :---------- | :----------: | :----------: | :----------: | :----------: |
| Fernandez Seer, Mario Alonso | MrBaru | 3 | 2 | 1 | 6 |
| Santiago Atanacio, Jairo Mathias | Msa-ware | 4 | 4 | 2 | 10 |
| Almandroz Carbajal, Pierina Marysabel | pierinaaa29 | 4 | 3 | 1 | 8 |
| Condor Sandoval, Jean Pierre | jeanpcs | 3 | 2 | 1 | 6 |
| **Total** | | **14** | **11** | **5** | **30** |

**Aportes por integrante.** Fernandez Seer, Mario Alonso, desarrolló el *middleware* de autorización de solicitudes, la protección de los endpoints de Production & Monitoring con la firma de las solicitudes del simulador IoT y la lectura de los secretos desde el entorno en Docker; en la aplicación web, las vistas de registro e inicio de sesión y el enlace de los términos; y en la landing page, los estilos de los botones. Santiago Atanacio, Jairo Mathias, agregó los paquetes de seguridad y el endpoint de tokens, protegió los endpoints de Alerts y de Analytics, integró las ramas y publicó las versiones 2.0.0, 3.0.0 y 4.0.0; en la aplicación web, la sesión con el interceptor del token, la guardia de rutas y el inicio de sesión del script de datos de demostración; y en la landing page, los textos de la prueba gratuita. Almandroz Carbajal, Pierina Marysabel, desarrolló la emisión y la validación de los tokens JWT, el *pipeline* de IAM con la seguridad Bearer en OpenAPI y la protección de Orders & Replenishment; en la aplicación web, el cliente de la API de IAM con los comandos de registro e inicio de sesión y el menú de cuenta; y en la landing page, los botones del encabezado y del pie de página. Condor Sandoval, Jean Pierre, desarrolló el cifrado y la verificación de las contraseñas y la protección de Billing y de Inventory & Stock; en la aplicación web, el *store* de IAM y el aviso de la prueba con la vista de planes al terminar; y en la landing page, los botones de cada segmento y de cada plan.
