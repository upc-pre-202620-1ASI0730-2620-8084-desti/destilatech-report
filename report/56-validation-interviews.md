### 5.3. Validation Interviews

Las entrevistas de validación evalúan con usuarios de los dos segmentos objetivo la landing page y la aplicación web de Destilatech. Cada sesión se registra en video, se resume por escrito y se evalúa con el formato de heurísticas del curso (usabilidad, arquitectura de información y diseño inclusivo).

#### 5.3.1. Diseño de Entrevistas

**Segmentos y participantes.** Se realizan de 3 a 5 entrevistas por segmento: productores de pisco y comercializadores (licorerías, bodegas y pequeños distribuidores). Cada participante interactúa con la landing page y con la aplicación web en el perfil que corresponde a su segmento.

**Elementos de la sesión.** La sesión dura alrededor de 30 minutos: presentación del participante, exploración libre de la landing page, ejecución de las tareas de la Tabla 31 con la aplicación web y preguntas finales sobre claridad, utilidad y confianza.

**Tabla 31**

*Tareas de las sesiones de validación por segmento*

| Segmento | Tarea | User flow evaluado | Historia relacionada |
| :---------- | :---------- | :---------- | :----------: |
| Ambos | Entender qué ofrece Destilatech y qué plan le conviene | Landing page: Header, Description, Pricing y selector de idioma | US22, US23, US52 |
| Ambos | Contratar un plan con el pago simulado | Planes de suscripción, formulario de pago e historial de pagos | US40 |
| Productor | Registrar un lote y avanzar su etapa | Gestión de lotes y detalle del lote | US06, US07 |
| Productor | Revisar las lecturas simuladas y entender una alerta por condición anómala | Monitoreo IoT y centro de alertas | US09, US11, US16 |
| Comercializador | Registrar un producto y un movimiento de entrada o salida | Inventario y movimientos de stock | US12, US13 |
| Comercializador | Registrar un pedido y revisar la sugerencia de reposición | Pedidos, reposición e indicadores | US18, US20 |
| Ambos | Exportar un listado a CSV | Inventario o pedidos | — |

**Preguntas finales.** ¿Pudo completar cada tarea sin ayuda? ¿Qué le resultó confuso o lento? ¿Qué información esperaba encontrar y no encontró? ¿Pagaría por esta herramienta y cuánto? ¿Qué cambiaría primero?

#### 5.3.2. Registro de Entrevistas

Para cada entrevista se registra: nombres y apellidos, edad, distrito, captura de un cuadro del video, enlace al video en Microsoft Stream con el tiempo de inicio y la duración, y un resumen de las apreciaciones del participante sobre las tareas asignadas. Las entrevistas de los dos segmentos (de 3 a 5 por segmento) se consolidan en un único video, con un título que indica el entrevistado, el segmento y la fecha de cada sesión.

**Video de las entrevistas de validación:** [COMPLETAR: enlace en Microsoft Stream]

**Figura [COMPLETAR]**

*Cuadro representativo del video de las entrevistas de validación*

[COMPLETAR: captura del video con su descripción y su duración total]

**Tabla 32**

*Registro de las entrevistas de validación*

| # | Segmento | Nombres y apellidos | Edad | Distrito | Inicio y duración en el video |
| :----------: | :---------- | :---------- | :----------: | :---------- | :----------: |
| 1 | [COMPLETAR] | [COMPLETAR] | [COMPLETAR] | [COMPLETAR] | [COMPLETAR: hh:mm:ss / mm:ss] |

**Entrevista #1.** [COMPLETAR: nombres y apellidos, segmento y fecha de la sesión]. Enlace al video con el tiempo de inicio: [COMPLETAR: URL de Microsoft Stream con el tiempo].

**Figura [COMPLETAR]**

*Cuadro del video de la entrevista #1*

[COMPLETAR: captura de un cuadro del video de esta entrevista]

*Resumen.* [COMPLETAR: texto descriptivo con las principales apreciaciones del entrevistado en cada tarea de la Tabla 31: qué logró sin ayuda, qué le resultó confuso o lento, qué esperaba encontrar, si pagaría por la herramienta y cuánto, y qué cambiaría primero]

#### 5.3.3. Evaluaciones según heurísticas

Las sesiones se evalúan con el formato del Anexo D del enunciado (*UX Heuristics & Principles Evaluation: Usability – Inclusive Design – Information Architecture*). En cada sesión, un integrante del equipo observa, registra el resultado, el tiempo y los problemas de cada tarea, y al terminar clasifica cada problema con la heurística o el principio que viola y con la escala de severidad.

| Dato | Valor |
| :---------- | :---------- |
| Carrera | Ingeniería de Software |
| Curso | Aplicaciones Web (1ASI0730) |
| Sección | NRC 8084 |
| Profesores | Todos |
| Auditor | FuturosSeniors, grupo que ejecuta las sesiones de evaluación |
| Cliente(s) | [COMPLETAR: nombres de los participantes de las sesiones] |

**Sitio o aplicación a evaluar.** La landing page de Destilatech (https://upc-pre-202620-1asi0730-2620-8084-desti.github.io/destilatech-website/) y la aplicación web (https://destilatech-webapp.web.app), con los perfiles de demostración de productor y de comercializador.

**Tareas a evaluar.** El alcance de esta evaluación incluye la revisión de la usabilidad de las siguientes tareas, que corresponden a la Tabla 31:

1. Entender qué ofrece Destilatech y qué plan le conviene en la landing page.
2. Contratar un plan de suscripción con el pago simulado.
3. Registrar un lote de producción y avanzar su etapa (productor).
4. Revisar las lecturas simuladas del monitoreo IoT y entender una alerta por condición anómala (productor).
5. Registrar un producto y un movimiento de entrada o salida de inventario (comercializador).
6. Registrar un pedido y revisar la sugerencia de reposición (comercializador).
7. Exportar un listado a CSV desde el inventario o los pedidos.

**Tareas no incluidas.** No están incluidas en esta versión de la evaluación:

1. Inicio de sesión y recuperación de contraseña: la API aún no autentica solicitudes (US26) y el perfil se elige con el selector de usuario de demostración.
2. Conexión con sensores IoT físicos: las lecturas de la aplicación son simuladas.
3. Configuración del umbral de stock bajo y de los rangos normales de las variables del proceso.
4. Registro y edición de clientes.

**Escala de severidad.** Los problemas se puntúan con la siguiente escala:

- **Nivel 1, problema superficial:** el usuario lo supera fácilmente u ocurre con muy poca frecuencia; no necesita corregirse salvo que haya tiempo disponible.
- **Nivel 2, problema menor:** ocurre un poco más seguido o es algo más difícil de superar; se le asigna prioridad baja para el siguiente *release*.
- **Nivel 3, problema mayor:** ocurre con frecuencia o los usuarios no logran resolverlo; es importante corregirlo y se le asigna prioridad alta.
- **Nivel 4, problema muy grave:** error de gran impacto que impide al usuario continuar con la herramienta; es imperativo corregirlo antes del lanzamiento.

**Heurísticas y principios de referencia.** Cada problema se clasifica en una de las tres familias del formato:

- **Usabilidad (heurísticas de Nielsen):** visibilidad del estado del sistema; coincidencia entre el sistema y el mundo real; control y libertad del usuario; consistencia y estándares; prevención de errores; reconocer en lugar de recordar; flexibilidad y eficiencia de uso; diseño estético y minimalista; ayuda para reconocer, diagnosticar y recuperarse de errores; ayuda y documentación.
- **Arquitectura de información:** ¿es encontrable (*findable*)?, ¿es usable (*usable*)?, ¿es útil (*useful*)?, ¿es creíble (*credible*)?, ¿es deseable (*desirable*)?, ¿es accesible (*accessible*)?, ¿aporta valor (*valuable*)?
- **Diseño inclusivo:** proporciona experiencias comparables; considera la situación del usuario; es consistente; da control al usuario; ofrece opciones; prioriza el contenido; añade valor.

**Tabla 33**

*Resumen de problemas encontrados en las sesiones de validación*

| # | Problema | Escala de severidad | Heurística / principio violado(a) |
| :----------: | :---------- | :----------: | :---------- |
| 1 | [COMPLETAR] | [COMPLETAR] | [COMPLETAR] |

**Problema #1:** [COMPLETAR: título]. **Sesión(es) en que se observó:** [COMPLETAR: número de entrevista]. **Severidad:** [COMPLETAR]. **Heurística violada:** [COMPLETAR]. **Problema:** [COMPLETAR: descripción, con captura de pantalla que ilustre el problema]. **Recomendación:** [COMPLETAR].
