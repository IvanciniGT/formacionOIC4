# OIC 

Servicio de Oracle en su cloud (OCI) para montar integraciones entre apps/sistemas/fuentes de datos

Una de las cosas que podemos montar son las típicas ETL... pero habrá más cosas

# Para comenzar a trabajar necesitamos:

## Instancia de OIC

Proceso en ejecución de Integration Cloud (de ese programa)

Dentro de una instancia podemos crear:
- Proyectos
- Integraciones
- Paquetes
- Conexiones
- Adaptadores
- Monitorización

## Integración

Es como se lla en OIC a los programas que vamos a montar para integrar 2 o más sistemas/repos...

En las integraciones necesitaremos CONEXIONES
Además, en las integraciones tendríamos tranformaciones, mapeos, filtrados...

Estas integraciones:
- Son programas, y como tal, debemos someterlos a control de versión
- Se pueden ejecutar:
    - Manualmente
    - Con una determinada peridicidad en el tiempo 
    - En respuesta a eventos de otras apps/sistemas

## Conexiones

Describen la forma de comunicarse con un sistema externo CONCRETO... esas conexiones las establecemos con un ADAPTADOR

## Adaptadores

Programas que nos permiten comunicarnos (para entrada o salida) con un TIPO de sistema externo

# Ediciones de OIC:

## Standard:

- Un montón de adaptadores
- Visual builder

## Enterprise:

Es igual a la estándar, con algunas cosas más:
- Adaptadores adiciones: Oracle ERP + SAP
- Procesos de Negocio

# Shape

## Development
Get product updates two weeks before the production instance so you can preview changes.

## Production
Get product updates two weeks after the development instance.

# MESSAGES

En función de esto y del tipo de licencia, así me cobran.
Un mensaje es una unidad de datos procesados por el sistema OIC. Es una unidad de 50Kbs de tamaño.

Yo contarto una cantidad de mensajes UN PACK o 5 PACKs

Eso que significa, que puedo usar cada hora hasta esa cantidad de "datos"
5000 x 50 Kbs = 250.000 Kbs ~= 250 Mbs por hora.

Si no los uso, los pierdo !
Si me paso... UPS !... Si me paso en más de 1.3 veces de promedio al día, me suben a un pack más

---

# Contenedores 

Un entorno aislado dentro de un SO con kernel LINUX donde ejecutar procesos.
Aislado:
- Tiene su propio sistema de archivos
- Tiene sus propias variables de entorno
- Tiene su propia configuración de red, con su propia IP
- Puede tener limitaciones de acceso al hardware del host

Son una alternativa a las maquinas virtuales para conseguir: entornos aislados
Pero a diferencia de ellas no llevan un SO (no llevan un kernel de SO, que al final es la base del SO)
Un contenedor está en comuniación con el Kernel del SO del host.

Son mucho más ligeros que las MV a la hora de conseguir un entorno aislado.

Para usar contenedores necesitamos de un gestor de contenedores
(eq. en el mundo de las maquinas virtuales a un hipervisor)

El más común es DOCKER, PODMAN, CRIO, CONTAINERD

Los contenedores los creamos desde una imagen de contenedor.
Una imagen de conteendor es un fichero comprimido (tar) que tiene dentro una estructura de carpetas POSIX
    /
        bin/
        opt/
        tmp/
        home/
        var/
        root/
        boot/
Y ahí dentro vienen una serie de programas YA INSTALADOS y PRECONFIGURADOS POR ALGUIEN

Para crear un conteendor lo que hacemos es descargar una IMAGEN DE CONTENEDO y con ella montar un contenedor

---

# DEFINIR EL FLUJO DE UNA INTEGRACION:

PROGRAMA -ASIGNACIONES->  EXTRAER DATOS -ASIGNACIONES->  TAREA1 -ASIGNACIONES-> TAREA2 -ASIGNACIONES->  TAREA3 -> VOLCAR DATOS -> ACABA
              (CONEXION)                                    (CONEXION)
