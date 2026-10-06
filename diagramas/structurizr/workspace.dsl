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

            webStatic = container "Web Application Static Content" "Sirve al navegador los archivos estáticos de la aplicación (HTML, CSS y paquetes de JavaScript) desde un servicio de hosting." "Hosting de contenido estático" "Static Content"

            spa = container "Single-Page Application" "Aplicación de una sola página que se ejecuta en el navegador del usuario; productores y comercializadores operan la plataforma desde ella." "Vue 3, PrimeVue, Pinia, Vue Router, JavaScript" "Web Browser" {
                sharedKernel = component "Shared Kernel" "Layout, cliente HTTP base, internacionalización (es/en), conmutador de usuario de demostración y componentes comunes." "Vue components, JavaScript"
                iamUi = component "IAM (planificado)" "Registro, inicio de sesión y recuperación de contraseña. No se aplica en el Sprint 2." "Vue components" "Planned"
                billingUi = component "Billing" "Plan, estado de la suscripción, periodo de prueba e historial de pagos." "Vue components, Pinia"
                productionUi = component "Production & Monitoring" "Lotes de producción, variables del proceso y lecturas simuladas." "Vue components, Pinia"
                inventoryUi = component "Inventory & Stock Management" "Productos, stock, movimientos y umbrales." "Vue components, Pinia"
                ordersUi = component "Orders & Replenishment" "Clientes, pedidos y lista de compra para reposición." "Vue components, Pinia"
                alertsUi = component "Alerts & Notifications" "Bandeja de alertas de anomalía y de stock bajo." "Vue components, Pinia"
                analyticsUi = component "Analytics & Estimations" "Dashboard, estimaciones de reposición e indicadores históricos." "Vue components, Pinia, Chart.js"
            }

            api = container "REST API" "Un único contenedor que expone los servicios de los siete bounded contexts como módulos: reglas de negocio, seguridad y acceso a datos. En el Sprint 2 se simula con una Fake API (json-server)." "ASP.NET Core, C#, Entity Framework Core" "API" {
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
        producer -> destilatech.spa "Registra lotes, monitorea variables y controla su inventario" "HTTPS"
        retailer -> destilatech.spa "Gestiona inventario, clientes y pedidos" "HTTPS"
        destilatech.landing -> destilatech.webStatic "Enlaza a la aplicación" "HTTPS"
        destilatech.webStatic -> destilatech.spa "Entrega la aplicación al navegador" "HTTPS"
        destilatech.spa -> destilatech.api "Consume los servicios" "JSON/HTTPS"
        destilatech.api -> destilatech.db "Lee y escribe" "SQL/TLS (EF Core)"
        destilatech.api -> paymentGateway "Solicita el cobro de la suscripción y verifica el pago" "HTTPS/REST"
        paymentGateway -> destilatech.api "Notifica el resultado del pago" "HTTPS (webhook)"
        iotSensor -> destilatech.api "Envía lecturas simuladas" "HTTPS/REST"

        # Componentes de la Landing Page
        destilatech.landing.pricing -> destilatech.webStatic "Enlaza a la aplicación con el plan preseleccionado" "HTTPS"
        destilatech.landing.footer -> destilatech.webStatic "Enlaza a la aplicación (registro)" "HTTPS"
        destilatech.landing.header -> destilatech.landing.description "Enlaza"
        destilatech.landing.header -> destilatech.landing.goals "Enlaza"
        destilatech.landing.header -> destilatech.landing.pricing "Enlaza"
        destilatech.landing.header -> destilatech.landing.impact "Enlaza"
        destilatech.landing.header -> destilatech.landing.features "Enlaza"
        destilatech.landing.header -> destilatech.landing.footer "Enlaza"

        # Componentes de la Single-Page Application (primer nivel: bounded contexts)
        destilatech.spa.sharedKernel -> destilatech.spa.alertsUi "Muestra alertas pendientes en la barra superior"
        destilatech.spa.sharedKernel -> destilatech.spa.billingUi "Muestra el estado de la prueba gratuita"
        destilatech.spa.productionUi -> destilatech.spa.inventoryUi "Consulta productos al registrar el embotellado"
        destilatech.spa.productionUi -> destilatech.spa.alertsUi "Genera alertas de anomalía"
        destilatech.spa.inventoryUi -> destilatech.spa.alertsUi "Genera alertas de stock bajo"
        destilatech.spa.ordersUi -> destilatech.spa.inventoryUi "Consulta y descuenta stock"
        destilatech.spa.analyticsUi -> destilatech.spa.productionUi "Consulta lotes y lecturas"
        destilatech.spa.analyticsUi -> destilatech.spa.inventoryUi "Consulta stock y movimientos"
        destilatech.spa.analyticsUi -> destilatech.spa.ordersUi "Consulta pedidos"
        destilatech.spa.analyticsUi -> destilatech.spa.alertsUi "Consulta alertas"
        destilatech.spa.ordersUi -> destilatech.spa.analyticsUi "Consulta estimaciones de reposición"
        destilatech.spa.inventoryUi -> destilatech.spa.analyticsUi "Consulta la estimación de un producto"
        destilatech.spa.sharedKernel -> destilatech.api "Invoca los servicios de cada contexto" "JSON/HTTPS"
        producer -> destilatech.spa.analyticsUi "Consulta su dashboard" "HTTPS"
        retailer -> destilatech.spa.analyticsUi "Consulta su dashboard" "HTTPS"

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
            autolayout tb 200 120
        }

        container destilatech "C4-02-Contenedores" "Diagrama de contenedores de Destilatech" {
            include *
            autolayout tb 200 150
        }

        component destilatech.landing "C4-03-Componentes-Landing" "Diagrama de componentes de la Landing Page" {
            include *
            autolayout tb 120 120
        }

        component destilatech.spa "C4-04-Componentes-SPA" "Diagrama de componentes de la Single-Page Application (bounded contexts)" {
            include *
            autolayout tb 150 200
        }

        component destilatech.api "C4-05-Componentes-API" "Diagrama de componentes de la REST API" {
            include *
            autolayout tb 150 200
        }

        branding {
            font "Arial"
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
            element "Static Content" {
                shape Folder
            }
            element "Planned" {
                background #ffffff
                stroke #a85c3f
                strokeWidth 3
                border dashed
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
