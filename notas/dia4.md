# Tipos de integraciones:
    
                                    Sistema D
                                        v
FLUJO DE DATOS : Sistema A   ----> Integración  ----> Sistema B
                                                ----> Sistema C
                
                
## Pasiva

FLUJO DEL PROGRAMA
    
    Integración  ---> Sistema A
                 Le pega un meneo a los datos
                 ---> Sistema B

## Reactiva

FLUJO DEL PROGRAMA
    
    Sistema A --> Evento INTEGRACION
                                         Le pega un meneo a los datos
                                         ---> Sistema B

## CONEXIONES:
    
    Integración (mi programa) --> Sistema externo           LLAMAR
    Sistema externo ---> Mi programa                        DISPARAR
    
### Ejemplos:
    
    Integración --[CONEXION:ADAPTADOR]-> Postgresql
                    ^ Hace falta configuración
                        Configuración general para la comunicación      (HOST, PUERTO, USUARIO...)-> Al definir la conexión
                        Configuración particular para la comunicación   (INSERT en Usuarios)      -> Dentro de la integración

    
    Integración --[CONEXION:ADAPTADOR]-> Postgresql
                    ^ Hace falta configuración
                        Configuración general para la comunicación      (HOST, PUERTO, USUARIO...)-> Al definir la conexión
                        Configuración particular para la comunicación   (INSERT en Usuarios)      -> Dentro de la integración
    
    Integración < --[CONEXION:ADAPTADOR]- Postgresql
                    ^                        ^
                    ^                      Aquí también necesito configuración (TRIGGER)
                    ^ Hace falta configuración
                        Configuración general para la comunicación      (HOST, PUERTO, USUARIO...)-> Al definir la conexión
                        Configuración particular para la comunicación   (CUANDO SE HAGA INSERT en Usuarios) -> Dentro de la integración
                        
    Integración < --[CONEXION:ADAPTADOR]- APP que he desarrollado en la casa
                       ^      REST            ^ Configuración a nivel de la APP
                    Servicio REST                        - Cuando ocurra un evento, se invoque a una URL
                    ^ Hace falta configuración
                        Configuración general para la comunicación      (AUTENTICACION)
                        Configuración particular para la comunicación   (CUANDO ME LLAMEN POR HTTP y método GET A tal ENDPOINT) -> Dentro de la integración

## FLUJO DE DATOS

Integración 1 - Pasiva

    PROPERTIES        >        COMUNICARSE CON UN FTP     >         COMUNICARSE CON BD          >      COMUNICARME CON UNA BBDD
                                Y extraer un fichero                Y hacer una query                   Y hacer un INSERT
                
                > ASINGACION >                      > ASINGACION >                      > ASINGACION >
                
                
                
    DATOS(MENSAJE)          ASIGNACIONES    TAREAS
    --------------------------------------------------------                            
                
    PROPERTIES              ASIGNACION > COMUNICARME CON UN FTP*
                                                v
    PROPERTIES                              ASIGNACION > COMUNICARSE CON BBDD1*(1)
    ENTRADA DEL FTP
    SALIDA DEL FTP
                                                                v
    PROPERTIES                                              ASIGANCION > COMUNICARME CON UNA BBDD2*
    ENTRADA DEL FTP
    SALIDA DEL FTP
    ENTRADA BBDD(1)    
    SALIDA BBDD(1)    
    
    
SCRIPT:
    MENSAJE Map<String, Datos>

    public SALIDA1 COMUNICARMECONUNFTP(Entrada1){}
    public SALIDA2 COMUNICARSE_CON_BBDD1(Entrada2){}
    public void COMUNICARSE_CON_BBDD2(Entrada3){}

    MENSAJE.put(ENTRADA1, MAPEO(MENSAJE, Entrada1 ))
    MENSJAE.put(SALIDA1, COMUNICARMECONUNFTP   ( MENSAJE["ENTRADA1"]    )
        
    MENSAJE.put(ENTRADA2 MAPEO(MENSAJE, Entrada2 ))
    MENSJAE.put(SALIDA2, CCOMUNICARSE_CON_BBDD1(  MENSAJE["ENTRADA2"]   )

    MENSAJE.put(ENTRADA3, MAPEO(MENSAJE, Entrada3 ))
    COMUNICARSE_CON_BBDD2(  MENSAJE["ENTRADA3"]   )
    
    
    
JSON
JS Object Notation

var numero = 3
var texto = "hola"
var lista = [1,2,3]
var objeto = {
    "clave1": True
}


# Node

Es el antiguo motor de JS del navegador CHROMIUM < - Opensource (GOOGLE)

Es el interprete de JS... el equivalente a la JVM

CHROMIUM -> Chrome
            Edge
            Safari
            Opera
            ----
            Firefox
            
Muchas veces usando librerias adicionales: EXPRESS, podemos montar un servidor web con JS.

JS -> ECMASCRIPT

java -> js
        c#

kotlin (JETBRAINS)
scala
    ---> .class -> JVM  openJDK
    
J2EE
        JakartaEE
        
        
200 lineas de datos EXCEL
200000 ACCESS
1000000 MYSQL
10000000 SQL SERVER
-------
100000000 ORACLE 15 TBs -> MONGO
          Weblogic -> TOMCAT Arquitecturas de microservicios
-------
BigData   --> 1 Pb