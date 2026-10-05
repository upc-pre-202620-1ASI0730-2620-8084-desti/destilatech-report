workspace "Destilatech" "Arquitectura de software de Destilatech, plataforma SaaS para el monitoreo de producción, el control de inventario y la gestión comercial de pisco." {

    !identifiers hierarchical

    model {

        # Personas
        visitor = person "Visitante" "Productor o comercializador que conoce la propuesta de valor, los planes y se registra."
        producer = person "Productor de pisco" "Pequeño o mediano productor que registra lotes, monitorea variables del proceso y controla su inventario."
        retailer = person "Comercializador" "Bodega, licorería o distribuidor que gestiona inventario, clientes y pedidos."

        # Sistemas externos
        paymentGateway = softwareSystem "Pasarela de Pago" "Procesa el cobro de las suscripciones. Se usa en modo de pruebas (sandbox)." "External"
        iotSensor = softwareSystem "Sensor IoT (simulado)" "Emite lecturas de variables del proceso como temperatura, pH y nivel." "External"

        # Sistema de software
        destilatech = softwareSystem "Destilatech" "Centraliza el monitoreo de producción, la gestión de inventario y las operaciones comerciales de pisco." {

            landing = container "Landing Page" "Sitio estático con la propuesta de valor, los planes y el punto de entrada al registro." "HTML5, CSS3, JavaScript" "Web Browser" {
                header = component "Header" "Logo, navegación entre secciones y selector de idioma." "HTML, CSS, JavaScript"
                description = component "Description" "Explica qué es Destilatech y su propuesta de valor." "HTML, CSS, JavaScript"
                goals = component "Goals" "Presenta los beneficios principales de la plataforma." "HTML, CSS, JavaScript"
                pricing = component "Pricing" "Muestra los planes de suscripción y la prueba gratuita de 14 días." "HTML, CSS, JavaScript"
                impact = component "Impact" "Muestra cifras del sector pisquero peruano." "HTML, CSS, JavaScript"
                features = component "Platform Features" "Describe las funcionalidades por segmento objetivo." "HTML, CSS, JavaScript"
                footer = component "Footer" "Contacto, enlaces, términos y condiciones y llamada a la acción de registro." "HTML, CSS, JavaScript"
            }

            webapp = container "Web Application" "Interfaz web adaptable en la que productores y comercializadores operan la plataforma." "Vue.js, PrimeVue, JavaScript" "Web Browser" {
                apiClient = component "API Client" "Centraliza las llamadas HTTP a la REST API y adjunta el token de sesión." "JavaScript service"
                i18n = component "Internationalization" "Traduce la interfaz al inglés y al español latinoamericano." "JavaScript module"
                auth = component "Auth Module" "Registro, inicio de sesión, recuperación de contraseña y estado de la sesión." "Vue components"
                billingUi = component "Billing Module" "Selección de plan, estado de la suscripción y periodo de prueba." "Vue components"
                dashboard = component "Dashboard Module" "Dashboard de producción o comercial según el tipo de negocio." "Vue components"
                productionUi = component "Production Module" "Registro y seguimiento de lotes y de variables del proceso." "Vue components"
                inventoryUi = component "Inventory Module" "Catálogo de productos, stock y movimientos." "Vue components"
                ordersUi = component "Orders Module" "Clientes, pedidos, historial y lista de compra." "Vue components"
                alertsUi = component "Alerts Module" "Bandeja de alertas de anomalía y de stock bajo." "Vue components"
                analyticsUi = component "Analytics Module" "Estimaciones de reposición e indicadores históricos." "Vue components"
            }

            api = container "REST API" "Expone los servicios de los siete bounded contexts: reglas de negocio, seguridad y acceso a datos." "ASP.NET Core, C#, Entity Framework Core" "API" {
                controllers = component "API Controllers" "Enruta, valida y autentica las peticiones HTTP y publica la documentación OpenAPI." "ASP.NET Core Controllers"
                iam = component "IAM" "Identidad de la cuenta, autenticación, recuperación de contraseña y periodo de prueba." "C# module"
                billing = component "Billing" "Planes, suscripciones e intentos de pago." "C# module"
                production = component "Production & Monitoring" "Lotes de producción, variables del proceso y lecturas." "C# module"
                inventory = component "Inventory & Stock Management" "Productos, stock, umbrales y movimientos." "C# module"
                orders = component "Orders & Replenishment" "Clientes, pedidos y listas de compra para reposición." "C# module"
                alerts = component "Alerts & Notifications" "Centraliza y gestiona las alertas." "C# module"
                analytics = component "Analytics & Estimations" "Estimaciones de reposición, indicadores históricos y resumen del dashboard." "C# module"
            }

            db = container "Database" "Persiste la información de cada bounded context en tablas con prefijo de módulo." "MySQL" "Database"
        }

        # Contexto
        visitor -> destilatech.landing "Conoce la propuesta de valor y los planes" "HTTPS"
        visitor -> destilatech.landing.header "Navega entre secciones" "HTTPS"
        producer -> destilatech.webapp "Registra lotes, monitorea variables y controla su inventario" "HTTPS"
        retailer -> destilatech.webapp "Gestiona inventario, clientes y pedidos" "HTTPS"
        destilatech.landing -> destilatech.webapp "Redirige al registro y al inicio de sesión" "HTTPS"
        destilatech.webapp -> destilatech.api "Consume los servicios" "JSON/HTTPS"
        destilatech.api -> destilatech.db "Lee y escribe" "SQL/TLS (EF Core)"
        destilatech.api -> paymentGateway "Solicita el cobro de la suscripción y verifica el pago" "HTTPS/REST"
        paymentGateway -> destilatech.api "Notifica el resultado del pago" "HTTPS (webhook)"
        iotSensor -> destilatech.api "Envía lecturas simuladas" "HTTPS/REST"

        # Componentes de la Landing Page
        destilatech.landing.pricing -> destilatech.webapp "Redirige con el plan preseleccionado" "HTTPS"
        destilatech.landing.footer -> destilatech.webapp "Redirige al formulario de registro" "HTTPS"
        destilatech.landing.header -> destilatech.landing.description "Enlaza"
        destilatech.landing.header -> destilatech.landing.goals "Enlaza"
        destilatech.landing.header -> destilatech.landing.pricing "Enlaza"
        destilatech.landing.header -> destilatech.landing.impact "Enlaza"
        destilatech.landing.header -> destilatech.landing.features "Enlaza"
        destilatech.landing.header -> destilatech.landing.footer "Enlaza"

        # Componentes de la Web Application
        destilatech.webapp.auth -> destilatech.webapp.apiClient "Usa"
        destilatech.webapp.billingUi -> destilatech.webapp.apiClient "Usa"
        destilatech.webapp.dashboard -> destilatech.webapp.apiClient "Usa"
        destilatech.webapp.productionUi -> destilatech.webapp.apiClient "Usa"
        destilatech.webapp.inventoryUi -> destilatech.webapp.apiClient "Usa"
        destilatech.webapp.ordersUi -> destilatech.webapp.apiClient "Usa"
        destilatech.webapp.alertsUi -> destilatech.webapp.apiClient "Usa"
        destilatech.webapp.analyticsUi -> destilatech.webapp.apiClient "Usa"
        destilatech.webapp.apiClient -> destilatech.api.controllers "Invoca" "JSON/HTTPS"
        producer -> destilatech.webapp.dashboard "Consulta su dashboard" "HTTPS"
        retailer -> destilatech.webapp.dashboard "Consulta su dashboard" "HTTPS"

        # Componentes de la REST API
        destilatech.api.controllers -> destilatech.api.iam "Enruta"
        destilatech.api.controllers -> destilatech.api.billing "Enruta"
        destilatech.api.controllers -> destilatech.api.production "Enruta"
        destilatech.api.controllers -> destilatech.api.inventory "Enruta"
        destilatech.api.controllers -> destilatech.api.orders "Enruta"
        destilatech.api.controllers -> destilatech.api.alerts "Enruta"
        destilatech.api.controllers -> destilatech.api.analytics "Enruta"
        destilatech.api.billing -> destilatech.api.iam "Publica SubscriptionActivated (extiende el acceso)" "Evento de dominio"
        destilatech.api.production -> destilatech.api.alerts "Publica AnomalyDetected" "Evento de dominio"
        destilatech.api.inventory -> destilatech.api.alerts "Publica LowStockDetected" "Evento de dominio"
        destilatech.api.orders -> destilatech.api.inventory "Publica OrderRegistered (descuenta stock)" "Evento de dominio"
        destilatech.api.production -> destilatech.api.inventory "Publica BottlingRegistered (agrega stock)" "Evento de dominio"
        destilatech.api.analytics -> destilatech.api.inventory "Lee el historial de movimientos" "Interfaz de lectura"
        destilatech.api.analytics -> destilatech.api.production "Lee el historial de lotes" "Interfaz de lectura"
        destilatech.api.orders -> destilatech.api.inventory "Consulta productos por reponer" "Interfaz de lectura"
        destilatech.api.iam -> destilatech.db "Lee y escribe" "SQL/TLS"
        destilatech.api.billing -> destilatech.db "Lee y escribe" "SQL/TLS"
        destilatech.api.production -> destilatech.db "Lee y escribe" "SQL/TLS"
        destilatech.api.inventory -> destilatech.db "Lee y escribe" "SQL/TLS"
        destilatech.api.orders -> destilatech.db "Lee y escribe" "SQL/TLS"
        destilatech.api.alerts -> destilatech.db "Lee y escribe" "SQL/TLS"
        destilatech.api.analytics -> destilatech.db "Lee y escribe" "SQL/TLS"
        destilatech.api.billing -> paymentGateway "Solicita el cobro y verifica el pago" "HTTPS/REST"
        paymentGateway -> destilatech.api.billing "Notifica el resultado del pago" "HTTPS (webhook)"
        iotSensor -> destilatech.api.production "Envía lecturas simuladas" "HTTPS/REST"
    }

    views {

        systemContext destilatech "C4-01-Contexto" "Diagrama de contexto de Destilatech" {
            include *
            autolayout lr 350 200
        }

        container destilatech "C4-02-Contenedores" "Diagrama de contenedores de Destilatech" {
            include *
            autolayout lr 350 200
        }

        component destilatech.landing "C4-03-Componentes-Landing" "Diagrama de componentes de la Landing Page" {
            include *
            autolayout lr 300 150
        }

        component destilatech.webapp "C4-04-Componentes-WebApp" "Diagrama de componentes de la Web Application" {
            include *
            autolayout lr 300 150
        }

        component destilatech.api "C4-05-Componentes-API" "Diagrama de componentes de la REST API" {
            include *
            autolayout lr 300 200
        }

        styles {
            element "Person" {
                shape Person
                background #7a3b2e
                color #ffffff
            }
            element "Software System" {
                background #a85c3f
                color #ffffff
            }
            element "External" {
                background #6b5d55
                color #ffffff
            }
            element "Container" {
                background #d99b3f
                color #2c2320
            }
            element "Component" {
                background #f7efe4
                color #2c2320
                stroke #a85c3f
            }
            element "Web Browser" {
                shape WebBrowser
            }
            element "API" {
                shape Hexagon
            }
            element "Database" {
                shape Cylinder
            }
        }
    }
}
