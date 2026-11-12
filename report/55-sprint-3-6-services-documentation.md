##### 5.2.3.6. Services Documentation Evidence for Sprint Review

La API documenta sus endpoints con OpenAPI (`Microsoft.AspNetCore.OpenApi`) y los publica en Scalar. Cada controlador se agrupa con una etiqueta por *bounded context*; las rutas usan el prefijo `/api/v1` y están en `kebab-case`, y los errores se devuelven como `ProblemDetails` con el título localizado según el idioma de la solicitud (inglés y español). La documentación de los endpoints de Alerts incluye metadatos localizados mediante un ensamblador de OpenAPI.

**URL de la documentación en ejecución local:** `http://localhost:5273/scalar` (con Docker: `http://localhost:8080/scalar`). **URL de la documentación desplegada:** `https://destilatech-platform.onrender.com/scalar` (sección 5.2.3.7).

**Repositorio de los Web Services:** [destilatech-platform](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-platform). **Commits de documentación del sprint:** [`ffb948a`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-platform/commit/ffb948a), [`863a908`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-platform/commit/863a908), [`9538486`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-platform/commit/9538486), [`71a702c`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-platform/commit/71a702c), [`a8690b1`](https://github.com/upc-pre-202620-1ASI0730-2620-8084-desti/destilatech-platform/commit/a8690b1).

**Tabla 28**

*Endpoints documentados de la API (OpenAPI)*

| Bounded Context | Acción (HTTP) | Endpoint (sintaxis de llamada) | Parámetros | Response | Historia |
| :---------- | :----------: | :---------- | :---------- | :---------- | :----------: |
| Alerts | `POST` | `/api/v1/alerts` | Cuerpo `RaiseAlertResource` (cuenta, tipo, origen, mensaje y severidad). | `201` con `AlertResource`; `400`, `409`, `500` con `ProblemDetails`. | US62 |
| Alerts | `GET` | `/api/v1/alerts` | Consulta: `accountId` (obligatorio), `type`, `status`. | `200` con la lista de `AlertResource`; `400`. | US62 |
| Alerts | `GET` | `/api/v1/alerts/{id}` | Ruta: `id`. | `200` con `AlertResource`; `404`. | US62 |
| Alerts | `PATCH` | `/api/v1/alerts/{id}/attended` | Ruta: `id`. | `200` con `AlertResource` en estado atendido; `404`, `409`, `500`. | US62 |
| Analytics | `GET` | `/api/v1/dashboard/summary` | Consulta: `userId`. | `200` con `DashboardSummaryResource` (tipo de usuario, alertas pendientes y, según el tipo de negocio, lotes activos y niveles de inventario o productos con stock bajo y pedidos recientes); `400`, `404`. | US65 |
| Analytics | `GET` | `/api/v1/historical-indicators` | Consulta: `userId`, `days` (por defecto 30), `utcOffsetMinutes`. | `200` con `HistoricalIndicatorsResource`; `400`. | — |
| Analytics | `GET` | `/api/v1/historical-indicators/top-consumed-products` | Consulta: `userId`, `days` (por defecto 30), `limit` (por defecto 5). | `200` con la lista de `ProductConsumptionResource`. | — |
| Analytics | `GET` | `/api/v1/replenishment-estimates` | Consulta: `userId`, `urgentOnly` (por defecto `false`). | `200` con la lista de `ReplenishmentEstimateResource`; `400`. | US29 |
| Analytics | `POST` | `/api/v1/replenishment-estimates/recalculations` | Consulta: `userId`. | `200` con la lista recalculada de `ReplenishmentEstimateResource`; `400`. | US29 |
| Analytics | `GET` | `/api/v1/products/{productId}/replenishment-estimate` | Ruta: `productId`; consulta: `userId`. | `200` con `ReplenishmentEstimateResource`; `404`. | US29 |
| Billing | `GET` | `/api/v1/plans` | Sin parámetros. | `200` con la lista de `PlanResource` (código, precio, ciclo, usuarios máximos, recomendado y claves de funcionalidades). | US57 |
| Billing | `GET` | `/api/v1/subscriptions` | Consulta: `userId`. | `200` con la lista de `SubscriptionResource`. | US57 |
| Billing | `PATCH` | `/api/v1/subscriptions/{id}` | Ruta: `id`; cuerpo `UpdateSubscriptionStatusResource`. | `200` con `SubscriptionResource`; `400`, `404`. | US57 |
| Billing | `GET` | `/api/v1/payments` | Consulta: `userId`, `reference`. | `200` con la lista de `PaymentResource`; `400`. | US57 |
| Billing | `POST` | `/api/v1/checkout-sessions` | Cuerpo `CreateCheckoutSessionResource` (usuario y plan). | `201` con `CheckoutSessionResource`; `404`. | US57 |
| Billing | `POST` | `/api/v1/checkout-sessions/{sessionId}/confirmation` | Ruta: `sessionId`. | `200` con `CheckoutConfirmationResource`; `402`, `409`. | US57 |
| IAM | `POST` | `/api/v1/users` | Cuerpo `RegisterUserResource` (datos de la cuenta y tipo de negocio). | `201` con `UserResource` (incluye el periodo de prueba); `400`, `409`. | US56 |
| IAM | `GET` | `/api/v1/users` | Sin parámetros. | `200` con la lista de `UserResource`. | US56 |
| IAM | `GET` | `/api/v1/users/{id}` | Ruta: `id`. | `200` con `UserResource`; `404`. | US56 |
| Inventory | `GET` | `/api/v1/products` | Consulta: `userId`. | `200` con la lista de productos de la cuenta. | US58 |
| Inventory | `POST` | `/api/v1/products` | Consulta: `userId`; cuerpo: nombre, presentación, unidad, categoría, precio, SKU y umbral de stock bajo. | `201` con el producto; `400`. | US58 |
| Inventory | `PUT` | `/api/v1/products/{id}` | Ruta: `id`; consulta: `userId`; cuerpo igual al de la creación. | `200` con el producto; `400`, `404`. | US58 |
| Inventory | `GET` | `/api/v1/stock-items` | Consulta: `userId`. | `200` con las existencias y su umbral. | US27 |
| Inventory | `PATCH` | `/api/v1/stock-items/{id}` | Ruta: `id`; consulta: `userId`; cuerpo: `lowStockThreshold`. | `200` con la existencia; `400`, `409`. | US27 |
| Inventory | `GET` | `/api/v1/stock-movements` | Consulta: `userId`. | `200` con los movimientos de la cuenta. | US27 |
| Inventory | `POST` | `/api/v1/stock-movements` | Consulta: `userId`; cuerpo: producto, tipo, motivo, cantidad, notas y referencia. | `201` con el movimiento; `400` (incluye los motivos `PRODUCTION`, `ORDER` y `RETURN`, que se registran por su flujo de origen), `404`, `409` si la salida supera el stock o se excede el máximo. | US27 |
| Orders | `GET` | `/api/v1/customers` | Consulta: `userId`. | `200` con la lista de `CustomerResource`. | — |
| Orders | `GET` | `/api/v1/customers/{id}` | Ruta: `id`; consulta: `userId`. | `200` con `CustomerResource`; `404`. | — |
| Orders | `POST` | `/api/v1/customers` | Cuerpo `CreateCustomerResource`. | `201` con `CustomerResource`; `400`, `409`. | — |
| Orders | `PUT` | `/api/v1/customers/{id}` | Ruta: `id`; cuerpo `UpdateCustomerResource`. | `200` con `CustomerResource`; `400`, `404`. | — |
| Orders | `GET` | `/api/v1/orders` | Consulta: `userId`, `customerId`. | `200` con la lista de `OrderResource`; `400`. | US63 |
| Orders | `GET` | `/api/v1/orders/{id}` | Ruta: `id`; consulta: `userId`. | `200` con `OrderResource`; `404`. | US63 |
| Orders | `POST` | `/api/v1/orders` | Consulta: `userId`; cuerpo `CreateOrderResource` (cliente y líneas). | `201` con `OrderResource` y stock descontado; `400`, `409` por stock insuficiente. | US63 |
| Orders | `PATCH` | `/api/v1/orders/{id}` | Ruta: `id`; consulta: `userId`; cuerpo `UpdateOrderStatusResource`. | `200` con `OrderResource`; `400`, `404`, `409`. | US63 |
| Orders | `GET` | `/api/v1/replenishment-orders` | Consulta: `userId`. | `200` con la lista de `ReplenishmentOrderResource`. | — |
| Orders | `GET` | `/api/v1/replenishment-orders/{id}` | Ruta: `id`; consulta: `userId`. | `200` con `ReplenishmentOrderResource`; `404`. | — |
| Orders | `POST` | `/api/v1/replenishment-orders` | Cuerpo `CreateReplenishmentOrderResource`. | `201` con `ReplenishmentOrderResource`; `400`, `409`. | — |
| Orders | `PATCH` | `/api/v1/replenishment-orders/{id}` | Ruta: `id`; cuerpo `UpdateReplenishmentOrderStatusResource`. | `200` con `ReplenishmentOrderResource`; `400`, `404`, `409`. | — |
| Production | `GET` | `/api/v1/batches` | Consulta: `userId`. | `200` con los lotes y su historial de etapas. | US59 |
| Production | `POST` | `/api/v1/batches` | Consulta: `userId`; cuerpo: código, variedad, fecha de inicio, cantidad estimada, tanque y notas. | `201` con el lote; `400`, `409`. | US59 |
| Production | `PUT` | `/api/v1/batches/{id}` | Ruta: `id`; consulta: `userId`; cuerpo: etapa, variedad, cantidad, tanque y notas. | `200` con el lote; `400`, `404`, `409`, `422`. | US59 |
| Production | `PATCH` | `/api/v1/batches/{id}/status` | Ruta: `id`; consulta: `userId`; cuerpo: etapa, notas, producto y botellas producidas. | `200` con el lote en la nueva etapa; `400`, `404`, `409`; `422` si la transición no respeta la secuencia RECEIVED, FERMENTATION, DISTILLATION, RESTING, BOTTLED. | US60 |
| Production | `GET` | `/api/v1/process-variables` | Consulta: `userId`. | `200` con las variables de proceso y su rango normal. | US28 |
| Production | `POST` | `/api/v1/process-variables` | Consulta: `userId`; cuerpo: lote, tipo, rango mínimo y máximo. | `201` con la variable; `400`, `404`, `409`. | US28 |
| Production | `PATCH` | `/api/v1/process-variables/{id}` | Ruta: `id`; consulta: `userId`; cuerpo: `minRange` y `maxRange`. | `200` con la variable; `400`, `404`. | US28 |
| Production | `GET` | `/api/v1/sensor-readings` | Consulta: `userId`, `_limit`. | `200` con las lecturas recientes. | US61 |
| Production | `POST` | `/api/v1/sensor-readings` | Consulta: `userId`; cuerpo: variable, valor y fecha. | `201` con la lectura (`200` si se repite); genera una alerta si el valor sale del rango; `400`, `404`, `409`. | US28 |
| Production | `GET` | `/api/v1/batches/{id}/readings` | Ruta: `id`; consulta: `userId`, `variable`, `from`, `to`. | `200` con hasta 1000 lecturas ordenadas por fecha; `400` si el inicio es posterior al fin; `404`. | US61 |
| Production | `POST` | `/api/v1/batches/{id}/readings` | Ruta: `id`; consulta: `userId`; cuerpo: `source_id`, clave de origen, variable, valor y fecha. | `201` con la lectura (`200` si se repite); `400`, `404`, `409`. | US28 |

*Nota.* Elaboración propia a partir de los controladores del repositorio destilatech-platform (2026). Los códigos de estado corresponden a los declarados en cada controlador; el detalle de cada esquema está en Scalar. Los endpoints de Inventory, Production, Orders y Analytics reciben la cuenta mediante el parámetro `userId` y los de Alerts mediante `accountId`, porque la autenticación (US26) todavía no está implementada; si no se envía la cuenta, el endpoint responde `400`.

**Ejemplo de response (`GET /api/v1/plans`).** La respuesta es una lista de planes; el siguiente fragmento corresponde a la captura de la Figura 190:

```json
[
  {
    "id": 1,
    "code": "BASIC",
    "price": 60.00,
    "billingCycle": "MONTHLY",
    "maxUsers": 1,
    "recommended": false,
    "featureKeys": ["billing.features.inventory", "billing.features.stock-alerts"]
  },
  {
    "id": 2,
    "code": "PROFESSIONAL",
    "price": 110.00,
    "billingCycle": "MONTHLY",
    "maxUsers": 5,
    "recommended": true,
    "featureKeys": ["billing.features.iot-monitoring", "billing.features.batch-traceability", "billing.features.estimations"]
  }
]
```

Cobertura de las historias técnicas: US27, US28, US29, US56, US57, US58, US59, US60, US61, US62, US63 y US65 cuentan con endpoints documentados (el de US65 es `GET /api/v1/dashboard/summary`); US64 es un servicio hospedado sin endpoint propio, que consume `POST /api/v1/batches/{id}/readings`. US26 no está implementada (sección 5.2.3.3).
