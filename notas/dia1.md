# Oracle Integration Cloud

Servicio que ofrece Oracle en su cloud para integrar aplicaciones o repositorios de información.

No hablamos solo de montar una ETL. Extraction, Transformation & Load
En ocasiones montamos procesos variantes de ETL: TEL, ETLT

Hay algo más que nos permite este servicio.... dentro de esos flujos de trabajo que vamos a montar (INTEGRACIONES)

En medio de esos flujos podremos meter PROCESOS DE NEGOCIO: APROBACIONES MANUALES, con formularios, APLICACIONES MANUALES DE DATOS

Además, la ETL... cómo / cuando se ejecutan? Casi siempre o programados en el tiempo... o cuando se disparan.

En nuestro caso, adicionalmente vamos a poder hacer integraciones en tiempo real, sujetas a eventos generados por un sistema.

# Con respecto a los sistemas que vamos a integrar:

- Pueden ser herramientas de software  (APLICACIÓN)
- Pueden ser repositorios de información (FICHERO, BBDD, COLA en un sistema de mensajería)
- Servicios ( a los que accedemos a través e un determinado protocolo) 
  - jdbc
  - rest
  - soap
  - ftp

Lecturas de ficheros -> BBDD
Conexión con OTM

En paralelo a esto, diremos que, esos sistemas/herramientas y/o repositorios los podremos tener:
- Dentro de Oracle Cloud
- En otro cloud
- On premisses

# MENSAJE <<<<<

Esas integraciones van a procesar MENSAJES

# Cloud

Un cloud es el conjunto de servicios relacionados con el mundo TIC que una empresa ofrece a través de Internet.
Los servicios se ofrecen:
- De forma desatendida (Automatizada)
- Pago por uso!

Esos servicios pueden ser de distinta naturaleza:
- IaaS  Infraestructura (alquilar una máquina virtual, montar una red virtual, balanceador de carga, HDD)
- PaaS  Plataforma (alquilar un producto de software(pensados para ayudarme a montar otro software que si va pensado para un usuario final) ya instalado: BBDD, Oracle Integration Cloud)
- SaaS  Software (alquilar un producto de software ya instalado y listo para su uso por un usuario final: GMAIL)

# Que ventajas me da el tener un servicio como éste (cloud) en lugar de una herramienta instalada on premisses.

- Escalabilidad
- Alta disponibilidad 
- Pago por uso!

# BBDD NoSQL

En inglés no se dice NOT
NOSQL <- Not Only SQL

Mongo Vamos a guardar estructuras JERARQUICAS DE DATOS

---

OIC: Oracle Integration Cloud... que es un Servicio que se ofrece en el cloud de Oracle
OCI: Oracle Cloud Infraestructure: Es el cloud de Oracle

# Conceptos propios de OIC: Oracle Integration Cloud

## Conector

Es un programa que viene ya creado por Oracle e instalado dentro de nuestra instancia de Oracle Integration Cloud, y que nos permite:
Conectar con un sistema externo o un servicio on premisses o en un cloud para extraer o depositar información


---

# REST y SOAP

Protocolos para exponer servicios de tipo CRUD.
Tendremos un API (Conjunto de funciones/servicios para comunicarme con un sistema)
El API de un sistema se puede exponer/atacar mediante diferentes protocolos de comunicación:
- REST <
- SOAP
- RPC
- ...

Vamos a usar REST para comunicarnos con sistemas externos
Para comunicarnos con el propio OIC
REST realmente no es un protocolo, sino un conjunto de RESTRICCIONES EN EL USO DE HTTP

---

# IDCS

Identity provider de Oracle

## OAuth

Protocolo de autenticación y autorización


Cuando queremos comunicar un sistema 1 con un sistema 2, el sistema 2 debe estar seguro que:
                             (Nuestra integración, el programa que estamos montando nosotros)
- El sistema 1 es el sistema 1 realmente: Autenticar al sistema 1
- Por otro lado, cuando ya sabe que el sistema 1 es quien dice ser... el sistema 2 AUTORIZARÁ O NO el acceso a una determinada operación a ese sistema... en base a unos privilegios que el sistema 1 tenga asignados: AUTORIZACION

Hoy en día lo habitual es que esas operaciones no sean gestionadas por cada Sistema... sino que las tienen delegadas a un Identity provider.

El Identity provider es quién:
- Autentica a un usuario / sistema1
- Opcionalmente lo autoriza a realizar unas tareas en un sistema adicional (sistema2)

El sistema 2 delega la responsabilidad de AUTENTICAR y AUTORIZAR al IP.

Cómo funciona esto.
Cuando el sistema 1 (en nuestro caso, nuestra integración) quiere acceder a un sistema 2, 
El sistema 2 solicita al sistema1 un documento que acredite quién es = TOKEN DE ACCESO !
El TOKEN DE ACCESO es un documento (JSON) que emite el IP

Dentro del TOKEN DE ACCESO deben ir los datos requeridos por el sistema 2...
Pero un sistema 2 ... puede ser distinto (en cuanto a los datos que requiere) de otro sistema 2'

Eso se gestiona mediante el concepto de SCOPE !


# Paquete!

Es un conjunto de conexiones/adaptores/tareas en flujos/esquemas.... que quiero reutilizar entre INTEGRACIONES

---

## SCHEMA

## Formatos de envío/intercambio de datos

JSON, YAML, XML

---
# Comunicación (las gestionamos a través de CONEXIONES)

En una comunicación tenemos varias partes:

    EMISOR  --mensaje (idioma)----> RECEPTOR
            canal (RED informática)

IDIOMAS:
- XML   \
- JSON   > ESQUEMA ASOCIADO 
- YAML  /
- CSV

Esquema? 

----
# Integración

Programa (es un script) que montamos para INTEGRAR 2 o más sistemas.

Al definir / configurar/ crear una integración hemos de definir:
- qué conexiones vamos a usar, que configuro a través de un adaptador
- actividades ( de transformación )

En OIC tenemos, ( al igual que hay adaptadores preconfigurados), tipos de tareas preconfiguradas:
- Transformación:
   - Mapper (vincular campos de una estructura (sistema1) a otra estructura (sistema2))
   - LookUp: Hacer una búsqueda de un dato que me llega en una fuente de datos externa (TABLA) y extraer info que añadir al mensaje
   - Enrich: Hace algo parecido al Lookup, pero contra un SISTEMA EXTERNO (geoposicionado de un IP)
   - Filter: Filtrar mensajes en base a distintos criterios configurables
   - Router: Permite enrutar un mensaje a distintos destinatarios, en función a condiciones
   - Aggregate: Junta mensajes en uno
   - Splitter: Divide un mensaje en varios mensajes
   - XML-> JSON
   - JSON -> XML
   - Merge
   - Sort
   - Pivot

Otras acciones que puedo meter en el flujo de actividades de una integración:
- Aprobación
- Validación de datos
- En otras ocasiones... esos trámites pueden ser más complejos... y requerir de un proceso completo y complejo para su definición/gestión

BPML

## Versionado de nuestras integraciones:

01.00.0000

RELEASE 1.2.3

                        Cuando incrementamos esos valores?

- 1: MAJOR              Cuando hay un cambio (de poner o quitar o rediseño) que no respeta RETROCOMPATIBILIDAD
- 2: MINOR              Nuevas funcionalidades
                        Funcionalidades existentes se marcan como obsoletas 
- 3: PATCH/MICRO        Cuando se arregla un bug (fix)



    Sistema 1       -- Integración -->  Sistema 2
                                        Repo (fichero EXCEL, tabla BBDD)
                       version                Estructura

    versión A+                          versión B+


# Tipos de software

- So
- Driver
- aplicacionesServicio
- Demonio
- Librería
- Comando
- Scripts ****

## Scripts: 

Secuencias de comandos... que se ejecutan según un determinado FLUJO

Ese flujo habitualmente lo expresamos mediante un lenguaje IMPERATIVO !
Palabras típicas de control de flujo en lenguajes imperativos: IF, ELSE, CASE, FOR, WHILE, [ TRY, CATCH ]