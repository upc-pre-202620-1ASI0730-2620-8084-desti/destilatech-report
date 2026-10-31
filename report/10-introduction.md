## Capítulo I: Introducción

### 1.1. StartUp Profile

#### 1.1.1. Descripción de la StartUp

**FuturosSeniors** es una startup tecnológica orientada al desarrollo de soluciones digitales que permitan optimizar procesos productivos y comerciales mediante el uso de tecnologías web, análisis de datos e integración con soluciones IoT.

Su producto principal, **Destilatech**, es una plataforma web orientada inicialmente al ecosistema peruano del pisco. La solución busca centralizar información relacionada con la producción, inventario y comercialización del producto, permitiendo que diferentes actores puedan consultar y gestionar información relevante desde una misma plataforma.

El principal grupo de usuarios de Destilatech está conformado por pequeños y medianos productores de pisco. Para ellos, la plataforma contempla herramientas de monitoreo de producción, gestión de lotes, inventario, alertas y análisis de información. Adicionalmente, se considera como segmento complementario a pequeños negocios encargados de la comercialización de pisco, como licorerías, bodegas comerciales y pequeños distribuidores, quienes podrán utilizar principalmente funcionalidades relacionadas con inventario, pedidos y reposición.

Destilatech contempla una futura integración con dispositivos IoT capaces de registrar variables relevantes durante los procesos de producción y almacenamiento. Dentro del alcance académico del proyecto, los dispositivos físicos no serán desarrollados; en su lugar, se utilizarán fuentes de datos simuladas que permitan representar el comportamiento de sensores y desarrollar la arquitectura de software necesaria para una futura integración con hardware real.

La propuesta de negocio se plantea bajo un modelo **Business-to-Business (B2B)** basado en **Software as a Service (SaaS)**. Los potenciales clientes podrán acceder a un **periodo de prueba gratuito de hasta 14 días**, luego del cual deberán contratar un plan de suscripción para continuar utilizando la plataforma.

Como oportunidad de crecimiento futura, Destilatech podrá complementar su modelo de suscripción mediante servicios de instalación, configuración, integración y mantenimiento de dispositivos IoT compatibles con la plataforma. De esta manera, el modelo de negocio podría generar ingresos tanto mediante la suscripción al software como por servicios tecnológicos especializados.

El mercado inicial se concentra en el sector pisquero peruano. De acuerdo con información publicada por el Ministerio de la Producción, durante 2024 la industria del pisco estuvo conformada por más de **527 empresas formales, en su mayoría MYPE**, y alcanzó una producción aproximada de **7.8 millones de litros**.

La solución se enfocará inicialmente en el pisco con la finalidad de mantener un dominio de negocio específico y un alcance viable para el desarrollo del producto. En una etapa futura, luego de validar la propuesta dentro de este mercado, Destilatech podría adaptarse a productores y comercializadores de otras bebidas alcohólicas que presenten necesidades similares.

**Propuesta de valor:**

> Destilatech centraliza el monitoreo de producción, la gestión de inventario y las operaciones comerciales relacionadas con el pisco en una plataforma web, integrando datos IoT y herramientas de análisis para facilitar una toma de decisiones más rápida, informada y eficiente.

**Principales capacidades de la solución:**

1. **Monitoreo inteligente de producción:** permite visualizar información relacionada con las condiciones del proceso productivo y almacenamiento mediante datos provenientes de fuentes IoT simuladas y, en una implementación futura, dispositivos físicos.

2. **Gestión de inventario y operaciones:** permite registrar productos, lotes, existencias, movimientos de inventario, clientes y pedidos desde una misma plataforma.

3. **Análisis y apoyo a la planificación:** utiliza información histórica de inventario y operaciones para generar alertas y estimaciones que permitan anticipar necesidades de reposición o nueva producción.

#### 1.1.2. Perfiles de Integrantes del equipo

| **Código** | **Nombre completo del integrante** | **Descripción de la carrera** | **Fotografía** | **Conocimientos y habilidades** |
| :---------- | :---------- | :------------------- | :------------------------------------------- | :------------------------------------------- |
| U202317807 | Fernandez Seer, Mario Alonso | Ingeniería de Software Universidad Peruana de Ciencias Aplicadas | <img src="assets/md-images-front-matter/mario-fernandez.png" alt="Fotografía de Fernandez Seer, Mario Alonso" width="120"><br><b>Figura 14</b><br><i>Fotografía de Fernandez Seer, Mario Alonso</i><br><i>Nota.</i> Fotografía proporcionada por el integrante.<br><i>Descripción.</i> Retrato del integrante Fernandez Seer, Mario Alonso del equipo FuturosSeniors. | Estudiante de Ingeniería de Software con conocimientos relacionados con desarrollo de software, análisis de requisitos y diseño de soluciones tecnológicas. Como líder del proyecto, participa en la definición de la propuesta de Destilatech, organización del equipo y alineamiento de las funcionalidades del producto con las necesidades identificadas dentro del dominio. |
| U202418755 | Santiago Atanacio, Jairo Mathias | Ingeniería de Software Universidad Peruana de Ciencias Aplicadas | <img src="assets/md-images-front-matter/jairo-santiago.png" alt="Fotografía de Santiago Atanacio, Jairo Mathias" width="120"><br><b>Figura 15</b><br><i>Fotografía de Santiago Atanacio, Jairo Mathias</i><br><i>Nota.</i> Fotografía proporcionada por el integrante.<br><i>Descripción.</i> Retrato del integrante Santiago Atanacio, Jairo Mathias del equipo FuturosSeniors. | Soy estudiante de Ingeniería de Software. Cuento con una base sólida en el desarrollo de algoritmos en C++, la creación de interfaces web interactivas mediante HTML, CSS y JavaScript, y el dominio de bases de datos relacionales (MySQL) y no relacionales (MongoDB). Me apasiona transformar problemas complejos en soluciones de software eficientes, escalables y con una gestión de datos versátil. Mi enfoque combina la rigurosidad técnica con habilidades blandas como la proactividad y la empatía, lo que me permite integrarme fácilmente en equipos colaborativos bajo enfoques ágiles. |
| U202316845 | Almandroz Carbajal, Pierina Marysabel | Ingeniería de Software Universidad Peruana de Ciencias Aplicadas | <img src="assets/md-images-front-matter/pierina-almandroz.jpg" alt="Fotografía de Almandroz Carbajal, Pierina Marysabel" width="120"><br><b>Figura 16</b><br><i>Fotografía de Almandroz Carbajal, Pierina Marysabel</i><br><i>Nota.</i> Fotografía proporcionada por el integrante.<br><i>Descripción.</i> Retrato del integrante Almandroz Carbajal, Pierina Marysabel del equipo FuturosSeniors. | Soy estudiante de Ingeniería de Software en la Universidad Peruana de Ciencias Aplicadas. Dentro del equipo me enfoco en el diseño de la arquitectura de software del proyecto, aplicando Domain-Driven Design, Event Storming a nivel de diseño y el C4 Model para representar los niveles de Context, Container y Component, así como los Class Diagrams y el modelo de base de datos de cada Bounded Context. También coordino el flujo de trabajo en Git y GitHub del equipo, cuidando la organización de ramas, commits y Pull Requests del repositorio. |
| U202418405 | Condor Sandoval, Jean Pierre | Ingeniería de Software Universidad Peruana de Ciencias Aplicadas | <img src="assets/md-images-front-matter/jean-pierre.jpeg" alt="Fotografía de Condor Sandoval, Jean Pierre" width="120"><br><b>Figura 17</b><br><i>Fotografía de Condor Sandoval, Jean Pierre</i><br><i>Nota.</i> Fotografía proporcionada por el integrante.<br><i>Descripción.</i> Retrato del integrante Condor Sandoval, Jean Pierre del equipo FuturosSeniors. | Estudiante de Ingeniería de Software con conocimientos en desarrollo de software, programación, análisis de requisitos y diseño de soluciones tecnológicas. Cuenta con experiencia académica en el desarrollo de aplicaciones y gestión de proyectos de software. Se caracteriza por su capacidad para resolver problemas, trabajar en equipo y adaptarse a diferentes tecnologías y enfoques de desarrollo. |
| U202322404 | Domenack Angeles, Miguel | Ingeniería de Software Universidad Peruana de Ciencias Aplicadas | <img src="assets/md-images-front-matter/miguel.png" alt="Fotografía de Domenack Angeles, Miguel" width="120"><br><b>Figura 18</b><br><i>Fotografía de Domenack Angeles, Miguel</i><br><i>Nota.</i> Fotografía proporcionada por el integrante.<br><i>Descripción.</i> Retrato del integrante Domenack Angeles, Miguel del equipo FuturosSeniors. | Soy estudiante de Ingeniería de Software y actualmente estoy cursando el 6to ciclo en la Universidad de Ciencias Aplicadas. Tengo conocimientos en lenguaje de programación de Python y experiencia con una gran cantidad de grupos de trabajo. Me presento como una persona que desea aprender todo lo relacionado a la programación, redes móviles y la tecnología del futuro, mientras me esfuerzo tanto de manera individual como con mis compañeros de grupos al realizar trabajos que pidan disciplina organización y resiliencia. |


*Nota.* Domenack Angeles, Miguel participó en el proyecto hasta el Sprint 1 (AV1) y se retiró del equipo antes del Sprint 2; desde entonces el equipo está conformado por cuatro integrantes.

### 1.2. Solution Profile

#### 1.2.1. Antecedentes y Problemática

La producción y comercialización de pisco involucra diferentes actividades relacionadas con elaboración, supervisión de lotes, almacenamiento, inventario, pedidos y distribución del producto. Durante estas actividades se genera información que puede ser utilizada para conocer el estado de las operaciones y apoyar la toma de decisiones.

Destilatech parte de la hipótesis de que, especialmente en pequeños y medianos negocios, parte de esta información puede encontrarse distribuida entre registros manuales, hojas de cálculo, herramientas de comunicación, instrumentos de medición y otros mecanismos independientes. Como consecuencia, los responsables de una operación pueden necesitar consultar diferentes fuentes para determinar el estado de su producción, inventario o necesidades de reposición.

En el caso de los productores, además, existen variables relacionadas con los procesos de producción y almacenamiento que pueden ser monitoreadas mediante sensores y dispositivos IoT. Integrar estos datos con la información operativa representa una oportunidad para desarrollar un sistema centralizado de supervisión y gestión.

Por otra parte, licorerías, bodegas comerciales y pequeños distribuidores necesitan controlar las existencias de los productos que comercializan y planificar su reposición. La incorporación de este segmento permite analizar otra etapa dentro de la cadena comercial del pisco y explorar necesidades relacionadas con inventario, pedidos y abastecimiento.

Destilatech propone una plataforma común para ambos tipos de usuarios, presentando funcionalidades diferentes según sus necesidades. Los productores podrán utilizar capacidades relacionadas con producción, lotes, monitoreo IoT e inventario; mientras que los comercializadores utilizarán principalmente herramientas relacionadas con inventario, pedidos, alertas y reposición.

Las problemáticas presentadas constituyen hipótesis iniciales del equipo y deberán ser contrastadas posteriormente mediante entrevistas y actividades de Requirements Elicitation & Analysis.

**Análisis 5W + 2H:**

| Elemento | Pregunta | Definición para Destilatech
| :---------- | :---------- | :------------------------------------------- |
| **Who - ¿Quién?** | ¿A quién afecta el problema / Quién es el usuario? | Pequeños y medianos productores de pisco y pequeños negocios dedicados a su comercialización, incluyendo licorerías, bodegas comerciales y distribuidores. |
| **What - ¿Qué?** | ¿Cuál es el problema / Qué se ofrece? | Existe una posible fragmentación de información relacionada con producción, lotes, inventario, pedidos y reposición, dificultando disponer de una visión centralizada de las operaciones. |
| **Where - ¿Dónde?** | ¿Dónde ocurre el problema / Dónde se usará? | Para los productores, principalmente en las zonas peruanas autorizadas para la producción de Pisco con Denominación de Origen. Para los comercializadores, en negocios peruanos dedicados a la venta o distribución de pisco. |
| **When - ¿Cuándo?** | ¿Cuándo ocurre / Cuándo se usará? | Durante actividades de producción, almacenamiento, supervisión, control de inventario, registro de pedidos y planificación de reposiciones. |
| **Why - ¿Por qué?** | ¿Por qué es importante resolverlo? | Porque disponer de información distribuida entre diferentes medios puede incrementar el esfuerzo necesario para supervisar las operaciones y dificultar la detección oportuna de situaciones que requieren atención. |
| **How - ¿Cómo?** | ¿Cómo se va a resolver? | Se plantea que parte del seguimiento puede realizarse mediante registros manuales, hojas de cálculo, instrumentos de medición, aplicaciones de mensajería u otras herramientas no integradas. Este supuesto deberá validarse mediante entrevistas. |
| **How Much - ¿Cuánto?** | ¿Cuál es el impacto? | El impacto puede manifestarse en tiempo destinado a consolidar información, dificultad para conocer el stock disponible, reposiciones tardías o demora en identificar condiciones productivas que requieren atención. Su magnitud será determinada durante la investigación con usuarios. |

##### 1.2.1.1. Objetivos y alcance inicial

**Objetivo general:**

Desarrollar una plataforma web que centralice información relacionada con la producción, inventario y comercialización de pisco, incorporando datos provenientes de soluciones IoT y herramientas de análisis para facilitar la supervisión, gestión y toma de decisiones.

**Objetivos específicos:**

- Centralizar información relevante sobre producción, inventario y operaciones.
- Permitir la visualización de variables relacionadas con los procesos de producción y almacenamiento.
- Facilitar el registro y seguimiento de lotes de producción.
- Permitir el control de productos, existencias y movimientos de inventario.
- Facilitar el registro básico de clientes y pedidos.
- Permitir a los negocios comercializadores controlar sus existencias y necesidades de reposición.
- Generar alertas ante condiciones que requieran atención.
- Utilizar información histórica para proporcionar estimaciones relacionadas con inventario y reposición.
- Diseñar la arquitectura de software considerando una futura integración con dispositivos IoT físicos.

**Alcance inicial de la solución:**

El Minimum Viable Product (MVP) de Destilatech contempla las siguientes funcionalidades:

- Autenticación de usuarios.
- Dashboard general adaptado al tipo de usuario.
- Monitoreo de variables IoT simuladas.
- Gestión de lotes de producción.
- Gestión de productos.
- Gestión de inventario.
- Registro de movimientos de stock.
- Gestión básica de clientes y pedidos.
- Sistema de alertas.
- Visualización de indicadores.
- Estimaciones básicas relacionadas con inventario y reposición.

Las funcionalidades disponibles dependerán del tipo de usuario.

**Productor:**

- Dashboard de producción.
- Monitoreo IoT.
- Gestión de lotes.
- Gestión de inventario.
- Clientes y pedidos.
- Alertas.
- Indicadores y estimaciones.

**Comercializador:**

- Dashboard comercial.
- Gestión de productos.
- Gestión de inventario.
- Registro de pedidos.
- Alertas de stock.
- Estimaciones de reposición.

##### 1.2.1.2. Restricciones


**Restricciones del alcance:**
- El proyecto académico se concentra en el desarrollo de software y no incluye la fabricación de dispositivos electrónicos.
- Los datos provenientes de dispositivos IoT serán simulados durante el desarrollo.
- La solución se enfocará inicialmente en el ecosistema peruano del pisco.
- Destilatech no busca reemplazar sistemas completos de contabilidad, facturación, recursos humanos o ERP.
- No se implementará un marketplace completo entre productores y comercializadores dentro del MVP.
- Las funcionalidades relacionadas con clientes y pedidos tendrán un alcance básico.
- La funcionalidad predictiva inicial estará enfocada principalmente en inventario y reposición.
- No se implementarán algoritmos avanzados de optimización de rutas logísticas durante el MVP.
- Las funcionalidades propuestas podrán modificarse de acuerdo con los resultados obtenidos durante las entrevistas y posteriores actividades de validación.

**Restricciones de Tiempo y Costo:**

- El desarrollo se enmarca en el calendario académico del curso 1ASI0730 (ciclo 2026-20), con entregables en las semanas 4 (AV1), 7 (TB1), 12 (AV2) y 15 (TB2), lo que limita el tiempo disponible para iterar sobre cada funcionalidad.
- El equipo no cuenta con presupuesto de inversión real, por lo que la implementación y el despliegue se realizarán utilizando planes gratuitos o de nivel educativo de las herramientas y servicios cloud seleccionados.
- La dedicación del equipo al proyecto es parcial, al compartirse con la carga académica de otros cursos del ciclo, lo cual condiciona el volumen de funcionalidades que pueden completarse por Sprint.
- No se contempla presupuesto para la adquisición de dispositivos IoT físicos ni sensores durante el desarrollo académico del proyecto.


#### 1.2.2. Lean UX Process

El Lean UX Process de Destilatech permite estructurar las hipótesis iniciales relacionadas con el problema, los usuarios, los resultados esperados y las posibles funcionalidades de la solución.

Estas hipótesis no representan hechos confirmados. Deberán ser posteriormente validadas mediante entrevistas, actividades de Needfinding y pruebas con usuarios pertenecientes a los segmentos objetivo.

La visión de negocio considera a Destilatech como una plataforma B2B bajo un modelo SaaS. Los potenciales clientes podrán probar las principales funcionalidades mediante un **periodo de prueba gratuito de hasta 14 días**. Una vez terminado este periodo, será necesaria la contratación de una suscripción para continuar utilizando la plataforma.

En una etapa posterior, el modelo de negocio podrá complementarse mediante servicios de instalación, configuración, integración y mantenimiento de dispositivos IoT físicos compatibles con Destilatech.


##### 1.2.2.1. Lean UX Problem Statements

El estado actual del dominio de producción y comercialización de pisco en el Perú se ha enfocado principalmente en pequeños y medianos productores y en pequeños comercializadores (licorerías, bodegas comerciales y pequeños distribuidores), que gestionan el monitoreo de la producción, los lotes, el inventario, los pedidos y la reposición mediante flujos de trabajo manuales o dispersos, como cuadernos, hojas de cálculo, mensajería y supervisión presencial. Los puntos de dolor que se asumen son la dificultad para detectar a tiempo condiciones anómalas del proceso, los errores en los registros y los quiebres de stock.

Lo que los productos y servicios existentes, de propósito general (sistemas de gestión empresarial y plataformas IoT genéricas), podrían no abordar adecuadamente es la centralización de información productiva, operativa y comercial dentro de una plataforma web especializada en el proceso del pisco y dimensionada para pequeñas empresas, que permita visualizar información relevante y apoyar decisiones relacionadas con producción e inventario.

Nuestro producto abordará esta oportunidad mediante una plataforma web que integre monitoreo IoT, gestión de lotes, gestión de inventario, clientes, pedidos, alertas y herramientas de análisis.

Nuestro enfoque inicial estará dirigido a pequeños y medianos productores de pisco y a pequeños negocios responsables de su comercialización, como licorerías, bodegas comerciales y pequeños distribuidores.

Sabremos que la solución genera valor cuando estos usuarios utilicen Destilatech recurrentemente para consultar y registrar información relacionada con sus operaciones, gestionar inventario y detectar situaciones que requieran atención, reduciendo su dependencia de múltiples fuentes de información independientes.


##### 1.2.2.2. Lean UX Assumptions

**Business Assumptions:**

1. Creemos que existe una oportunidad para una solución digital especializada en producción, inventario y comercialización dentro del ecosistema peruano del pisco.
2. Creemos que un modelo SaaS permite ofrecer Destilatech sin requerir una gran inversión inicial en infraestructura de software por parte del cliente.
3. Creemos que un periodo de prueba gratuito de hasta 14 días permitirá que potenciales clientes conozcan las principales funcionalidades antes de adquirir una suscripción.
4. Creemos que las funcionalidades de monitoreo, inventario, alertas y análisis pueden generar suficiente valor para justificar una suscripción.
5. Creemos que la instalación, integración y mantenimiento de dispositivos IoT puede convertirse posteriormente en una fuente complementaria de ingresos.
6. Creemos que atender tanto a productores como a pequeños comercializadores permitirá desarrollar una solución aplicable a diferentes etapas de la cadena del pisco.
7. Creemos que la solución podría adaptarse posteriormente a otros tipos de bebidas alcohólicas.

**Business Outcome Assumptions:**

1. Creemos que lograremos usuarios que completen el periodo de prueba y posteriormente contraten una suscripción.
2. Creemos que los clientes consultarán recurrentemente sus dashboards.
3. Creemos que se reducirá el esfuerzo necesario para consultar información operativa.
4. Creemos que aumentará el registro digital de lotes, productos, movimientos y pedidos.
5. Creemos que se reducirán las situaciones de inventario insuficiente que no se identifican oportunamente.
6. Creemos que las funcionalidades de monitoreo generarán interés por futuras integraciones con dispositivos IoT físicos.
7. Creemos que el monitoreo de variables productivas mediante IoT mejorará la capacidad de supervisión y respuesta de los productores ante condiciones anómalas del proceso productivo.
8. Creemos que las estimaciones basadas en información histórica mejorarán la planificación de reposición de inventario y de nuevos lotes de producción.

Estos resultados podrán medirse posteriormente mediante indicadores como usuarios activos, frecuencia de acceso, cantidad de registros de inventario, alertas atendidas, utilización de las funcionalidades principales y conversión del periodo de prueba hacia una suscripción.

**User Assumptions:**

1. Creemos que los propietarios y administradores de pequeñas productoras necesitan conocer rápidamente el estado de sus operaciones.
2. Creemos que los responsables de producción necesitan registrar y consultar información relacionada con lotes.
3. Creemos que los productores pueden beneficiarse de visualizar información proveniente de sensores desde una plataforma centralizada.
4. Creemos que licorerías, bodegas comerciales y pequeños distribuidores necesitan controlar sus existencias y reposiciones.
5. Creemos que algunos usuarios administran actualmente información mediante diferentes herramientas o registros.
6. Creemos que los usuarios valorarán una interfaz web sencilla que muestre principalmente las funcionalidades relevantes para sus actividades.
7. Creemos que los usuarios no necesitan comprender técnicamente el funcionamiento de los dispositivos IoT para obtener valor de la información generada.

**User Outcome and Benefit Assumptions:**

1. Creemos que los productores quieren tener mayor visibilidad sobre sus operaciones de producción.
2. Creemos que los responsables de producción quieren detectar oportunamente las condiciones que requieren atención.
3. Creemos que los productores quieren conservar información organizada sobre sus lotes.
4. Creemos que los usuarios quieren conocer sus existencias de manera rápida.
5. Creemos que los comercializadores quieren identificar cuándo necesitan reponer un producto.
6. Creemos que los usuarios quieren reducir la necesidad de consultar diferentes registros para obtener información.
7. Creemos que los usuarios quieren recibir alertas relevantes sobre sus operaciones.
8. Creemos que los responsables de los negocios quieren disponer de información histórica que apoye sus decisiones.

**Feature Assumptions:**

1. Creemos que un **dashboard adaptado al tipo de usuario** permitirá visualizar rápidamente la información más importante.
2. Creemos que un módulo de **monitoreo IoT** permitirá a los productores supervisar variables relevantes relacionadas con sus procesos productivos.
3. Creemos que un módulo de **gestión de lotes** permitirá organizar el historial de producción.
4. Creemos que un módulo de **inventario y movimientos de stock** permitirá a productores y comercializadores controlar sus existencias.
5. Creemos que las **alertas de stock y condiciones de producción** permitirán detectar situaciones que requieren atención.
6. Creemos que un módulo básico de **clientes y pedidos** permitirá organizar información asociada con la comercialización.
7. Creemos que las **estimaciones de inventario y reposición** permitirán anticipar posibles necesidades futuras.


##### 1.2.2.3. Lean UX Hypothesis Statements

Cada hipótesis sigue la plantilla del curso: *Creemos que lograremos* [resultado de negocio], *si* [personas] *alcanzan* [beneficio o resultado del usuario], *con* [funcionalidad o solución]. Los resultados de negocio provienen de los Business Outcome Assumptions, los beneficios de los User Outcome and Benefit Assumptions y las funcionalidades de los Feature Assumptions.

**Hypothesis Statement 1 — Dashboard**
Creemos que lograremos **que los clientes consulten recurrentemente sus dashboards y que se reduzca el esfuerzo para consultar información operativa** si **productores y comercializadores** alcanzan **conocer rápidamente el estado general de su operación desde una vista centralizada** con **dashboards personalizados según el tipo de usuario**.

**Hypothesis Statement 2 — Monitoreo IoT**
Creemos que lograremos **mejorar la supervisión y la respuesta ante condiciones anómalas del proceso productivo y generar interés en futuras integraciones con dispositivos IoT físicos** si **los productores y responsables de producción** alcanzan **acceso centralizado a las variables relevantes del proceso** con **un módulo de monitoreo conectado a fuentes de datos IoT simuladas**.

**Hypothesis Statement 3 — Gestión de lotes**
Creemos que lograremos **incrementar el registro digital de lotes de producción** si **los productores** alcanzan **conservar organizado el historial de sus procesos productivos** con **un módulo de gestión de lotes**.

**Hypothesis Statement 4 — Inventario**
Creemos que lograremos **incrementar el registro digital de productos y movimientos de stock** si **productores y comercializadores** alcanzan **conocer sus existencias de manera rápida y organizada** con **un módulo centralizado de inventario**.

**Hypothesis Statement 5 — Alertas**
Creemos que lograremos **reducir las situaciones de inventario insuficiente y de condiciones anómalas que no se identifican oportunamente** si **productores y comercializadores** alcanzan **recibir avisos cuando una condición requiere atención** con **un sistema automático de alertas de producción e inventario**.

**Hypothesis Statement 6 — Clientes y pedidos**
Creemos que lograremos **incrementar el registro digital de pedidos** si **los usuarios responsables de ventas y abastecimiento** alcanzan **registrar y consultar con facilidad sus operaciones comerciales** con **un módulo básico de clientes y pedidos**.

**Hypothesis Statement 7 — Estimaciones de inventario**
Creemos que lograremos **mejorar la planificación de la reposición de inventario y de nuevos lotes de producción** si **productores y comercializadores** alcanzan **anticipar sus necesidades futuras de inventario** con **estimaciones construidas a partir de información histórica**.

##### 1.2.2.4. Lean UX Canvas

<table>  
<tr>  
<td>  
<h2>Business Problem</h2>  
Productores y pequeños comercializadores de pisco pueden gestionar información mediante diferentes registros y herramientas, dificultando disponer de una visión centralizada de producción, inventario y operaciones.
</td>  
<td>  
<h2>Solutions</h2>  
Dashboard adaptado al tipo de usuario, monitoreo IoT (simulado), gestión de lotes, inventario y movimientos de stock, alertas de producción/inventario, módulo básico de clientes y pedidos, estimaciones de inventario y reposición.
</td>  
<td>  
<h2>Business Outcomes</h2>  
1. Conseguir clientes mediante suscripciones (conversión del trial).<br>
2. Aumentar el uso recurrente de la plataforma (consulta de dashboards).<br>
3. Reducir el esfuerzo para consultar información operativa.<br>
4. Incrementar el registro digital de lotes, productos, movimientos y pedidos.<br>
5. Reducir inventario insuficiente no detectado a tiempo.<br>
6. Generar interés en integraciones futuras de IoT físico.<br>
7. Mejorar la supervisión y respuesta ante condiciones anómalas de producción.<br>
8. Mejorar la planificación de reposición y de nueva producción.
</td>  
</tr>  
<tr>  
<td>  
<h2>Users</h2>  
Pequeños y medianos productores de pisco (Lima, Ica, Arequipa, Moquegua, Tacna) y propietarios/administradores/responsables de inventario de licorerías, bodegas comerciales, minimarkets y pequeños distribuidores de pisco.
</td>  
<td></td>  
<td>  
<h2>User Outcomes & Benefits</h2>  
Mayor visibilidad de las operaciones de producción; detección oportuna de condiciones que requieren atención; información organizada sobre lotes; conocimiento rápido de existencias; identificación oportuna de necesidades de reposición; menor dependencia de registros dispersos; información histórica que apoya decisiones.
</td>  
</tr>  
<tr>  
<td>  
<h2>Hypotheses</h2>  
Si productores y comercializadores acceden a información centralizada y a herramientas adaptadas a sus operaciones mediante Destilatech, podrán supervisar su producción, controlar su inventario y anticipar necesidades de reposición con menor dependencia de registros y herramientas independientes, lo que se reflejará en un uso recurrente de la plataforma y en la conversión de la prueba gratuita hacia una suscripción paga.
</td>  
<td>  
<h2>What’s the most important thing we need to learn first?</h2>  
Cómo administran hoy la producción, el inventario y la reposición ambos segmentos; qué herramientas usan actualmente (cuadernos, Excel, WhatsApp, instrumentos de medición); cuáles son sus principales dificultades; qué información consideran crítica; qué funcionalidades valorarían de una plataforma especializada; y si estarían dispuestos a pagar una suscripción SaaS por ella.
</td>  
<td>  
<h2>What’s the least amount of work we need to do to learn the next most important thing?</h2>  
Entrevistar de 3 a 5 representantes de cada segmento (productores y comercializadores) y, con esos hallazgos, validar las funcionalidades priorizadas mediante wireframes/prototipos de baja fidelidad antes de construir las características de mayor complejidad (monitoreo IoT y estimaciones predictivas).
</td>  
</tr>  
</table>


### 1.3. Segmentos objetivo

Destilatech se orienta inicialmente hacia actores relacionados con la producción y comercialización de pisco en el Perú.

De acuerdo con el Ministerio de la Producción, durante 2024 la industria del pisco estuvo compuesta por más de **527 empresas formales, en su mayoría MYPE**, y alcanzó aproximadamente **7.8 millones de litros de producción nacional**. Adicionalmente, las micro y pequeñas empresas representaron el **99.1 % de las empresas formales del Perú durante 2024**, mientras que los sectores de comercio y servicios concentraron el 85.8 % de las MYPE.

Para el desarrollo inicial del producto se identificaron dos segmentos objetivo.


#### 1.3.1. Segmento 1: Pequeños y medianos productores de pisco

Este segmento está compuesto por propietarios, administradores y responsables de operaciones de pequeñas y medianas empresas productoras de pisco.

La Denominación de Origen Pisco comprende zonas ubicadas en **Lima, Ica, Arequipa, Moquegua y Tacna**, por lo que estas regiones representan el principal ámbito geográfico asociado al segmento productor.

**Características iniciales:**

- Propietarios, administradores o responsables de empresas productoras de pisco.
- Principalmente vinculados con empresas de pequeña y mediana escala.
- Participan en procesos relacionados con producción, almacenamiento e inventario.
- Requieren consultar información relacionada con el estado de sus operaciones.
- Toman o apoyan decisiones relacionadas con producción, existencias y planificación.

**Necesidades asumidas a validar:**

- Supervisar información relacionada con la producción.
- Registrar y consultar lotes.
- Controlar el inventario disponible.
- Detectar condiciones que requieran atención.
- Mantener información organizada sobre productos y movimientos.
- Utilizar información histórica para apoyar decisiones.
- Reducir la dependencia de registros separados.

Este segmento representa al principal usuario de las capacidades de **producción, monitoreo IoT y gestión de lotes** de Destilatech.


#### 1.3.2. Segmento 2: Pequeños comercializadores de pisco

Este segmento está compuesto por propietarios, administradores o responsables de inventario de pequeños establecimientos y negocios dedicados a comercializar pisco y otras bebidas alcohólicas.

Dentro de este segmento se consideran principalmente:

- Licorerías.
- Bodegas comerciales.
- Minimarkets que comercialicen bebidas alcohólicas.
- Pequeños distribuidores.
- Otros pequeños comercios especializados en bebidas.

Estos usuarios no requieren acceder a las funcionalidades relacionadas directamente con el proceso de elaboración del pisco. Su interacción con Destilatech estará centrada principalmente en inventario, pedidos, alertas y reposición.

**Características iniciales:**

- Propietarios, administradores o responsables de pequeños negocios comerciales.
- Personal encargado de inventario o abastecimiento.
- Comercializan diferentes productos y presentaciones.
- Necesitan conocer las existencias disponibles.
- Realizan procesos periódicos de reposición de productos.
- Participan en decisiones relacionadas con compra y abastecimiento.

**Necesidades asumidas a validar:**

- Consultar rápidamente el stock disponible.
- Registrar entradas y salidas de productos.
- Identificar productos con niveles bajos de inventario.
- Registrar pedidos.
- Consultar información histórica de inventario.
- Anticipar posibles necesidades de abastecimiento.
- Mantener información relacionada con inventario en una ubicación centralizada.

Este segmento representa principalmente al usuario de las capacidades de **inventario, pedidos y reposición** de Destilatech.


#### 1.3.3. Relación entre los segmentos

Los dos segmentos participan en diferentes etapas relacionadas con el pisco, pero presentan necesidades que pueden ser atendidas mediante componentes compartidos de Destilatech.

El **productor** se concentra principalmente en:

- Producción.
- Monitoreo.
- Lotes.
- Almacenamiento.
- Inventario.
- Pedidos.

El **comercializador** se concentra principalmente en:

- Inventario.
- Pedidos.
- Reposición.
- Comercialización.

Destilatech utilizará una misma plataforma tecnológica, pero presentará diferentes funcionalidades y vistas de acuerdo con las necesidades del usuario.

Esta estrategia permite mantener un alcance manejable para el desarrollo, debido a que componentes como usuarios, productos, inventario, pedidos y alertas pueden ser reutilizados entre ambos segmentos, mientras que las funcionalidades de producción y monitoreo IoT estarán disponibles específicamente para los productores.

Las características y necesidades descritas constituyen hipótesis iniciales del equipo. Las entrevistas con representantes de ambos segmentos permiten validar, modificar o descartar los problemas, comportamientos y necesidades identificados.
