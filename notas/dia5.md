# Lookups / Consultas

Lo que podemos poner es una tabla EXCEL.
Vamos a tener en esa tabla filas y columnas.
La entidad que gestionamos son las filas.
En cada fila tendremos multiples columnas o 2 <

Al montar nuestras integraciones en OIC lo qye tendremos será una tabla (consulta/lookup)
que nos permitirá entrar a una fila por una columna / dato y obtener el dato de otra columna.

Para que sirve esto:
En distintas aplicaciones, la misma información (dato) puede tener representaciones diferentes.
- PAIS:
    ES      SPAIN   españa
- MONEDA



Servicio de pronóstico clima

BBDD

ESTADO ACTUAL
Ciudad | Temperatura | clima

CLIMA:
1   Soleado
2   Lluvioso
3   Tormentas
4   Niebla


Publicar un servicio web


Me piden el clima de una ciudad:
    - Consulto el clima
    - Si la ciudad existe y tengo clima:
        - Devuelvo los datos al que los pide
        - Actualizo una BBDD externa. SI FALLA , dejo al cliente sin datos?
            -> Anotar el dato en un fichero temporal
            
            
    try{                                                <<<< Ambito de OIC
        Conection dbconn=...
        ...
        
        
        throw new Exception("MENSAJE")                  <<<<  Lanzar nuevo fallo en OIC
        
    }catch(Exception e) {                               <<<<< Manejador de Fallos (Fault handler) en OIC
        ...
        código
        ... 
        throw(e)                                        <<<< Volver a lanzar un fallo en OIC
    }
    dbconn
    