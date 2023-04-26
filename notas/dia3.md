
# EJEMPLOS DE INTEGRACIONES

 FTP1   --    fichero texto plano       -->    FTP2
 
 FTP1   -- fichero csv --- fichero JSON -->    FTP2
 
 FTP1  -- muchos csv ---> 1 fichero JSON ---> FTP 2
 FTP1  -- muchos csv  --->   muchos JSON ---> FTP 2
 
 # XML. Estandar del W3C
 
 eXtensible Markup Languaje
 
 - Los documentos XML tienen estructura jerarquica.
    Tenemos una marca raiz... y dentro de ella, más marcas, que a su vez tienen más marcas...
 - Cada elemento puede tener un contenido y unos atributos.

En Oracle Integration... los datos viajan en XML entre tareas

<ns1:usuarios>
    <ns1:usuario id="1">
        <ns1:nombre>Ivan</ns1:nombre>
        <ns1:apellidos>Osuna</ns1:apellidos>
        <ns1:email>ivan.osuna.ayuste@gmail.com</ns1:email>
        <ns1:edad>44</ns1:edad>
    </ns1:usuario>
    <ns1:usuario id="2">
        <ns1:nombre>Alejandro</ns1:nombre>
        <ns1:apellidos>Sanchez</ns1:apellidos>
        <ns1:email>alejandro@sanchez.com</ns1:email>
    </ns1:usuario>
</ns1:usuarios>


## XSLT. Estandar del W3C

Nos define TRANSFORMACIONES para pasar de un XML con una determinada estructura a otro XML con otra estructura

## XPATH. Estandar del W3C

Identificar y operar con los nodos de un documento XML

/ns1:usuarios/ns1:usuario           > QUE DEVUELVE?  Una LISTA con los usuarios
/ns1:usuarios/ns1:nombre            >                NADA 
/ns1:usuarios//ns1:nombre           >                Una LISTA con las MARCAS de los nombres
/ns1:usuarios//ns1:nombre/text()    >                Una LISTA de textos, con los nombres
/ns1:usuarios/ns1:usuario[1]/ns1:nombre/text()
/ns1:usuarios/ns1:usuario[position()=1]/ns1:nombre/text()
/ns1:usuarios/ns1:usuario[last()]/ns1:nombre/text()
/ns1:usuarios/*[last()]/ns1:nombre/text()
                ^^^^^^
                predicado
Los predicados no sirven solo para dar posiciones.... sino para filtrar elementos basados en condiciones
Los predicados, los leemos en castellamo con "tal que"
/ns1:usuarios/*[ns1:edad]/ns1:nombre    >           <ns1:nombre>Ivan</ns1:nombre>
/ns1:usuarios/*[ns1:edad]/ns1:nombre/text()         Ivan
/ns1:usuarios/ns1:usuario/@id                       [1,2]

/ns1:usuarios/ns1:usuario[@id=1]//text()             Ivan Osuna ivan.osuna.ayuste@gmail.com 44

OPERADORES:
+ - * div = != < > <= >=  and () mod
mod (MODULO) RESTO DE LA DIVISION ENTERA
or aplica a valores lógicos
| o, que aplica a elementos

/ns1:usuarios//ns1:nombre | /ns1:usuarios//ns1:apellidos    <ns1:nombre>Ivan</ns1:nombre>
                                                            <ns1:nombre>Alejandro</ns1:nombre>
                                                            <ns1:apellidos>Osuna</ns1:apellidos>
                                                            <ns1:apellidos>Sanchez</ns1:apellidos>
<ns1:usuarios>
    <ns1:usuario id="1">
        <ns1:nombre>Ivan</ns1:nombre>
        <ns1:apellidos>Osuna</ns1:apellidos>
        <ns1:email>ivan.osuna.ayuste@gmail.com</ns1:email>
        <ns1:edad>44</ns1:edad>
    </ns1:usuario>
    <ns1:usuario id="2">
        <ns1:nombre>Alejandro</ns1:nombre>
        <ns1:apellidos>Sanchez</ns1:apellidos>
        <ns1:email>alejandro@sanchez.com</ns1:email>
        <ns1:edad>25</ns1:edad>
    </ns1:usuario>
</ns1:usuarios>

/ns1:usuarios/ns1:usuario[@id=1]/ns1:edad + /ns1:usuarios/ns1:usuario[@id=2]/ns1:edad


---


Montar un servicio REST con ORACLE INTEGRATION CLOUD!

--METODO : PAYLOAD--> URL                       Extraer datos
                                                    v
            JSON        http://servidor:puerto/ruta?parametros
            ^                                    ^
            Extraer datos                   EXTRAER DATOS
            
El servicio contesta con otro JSON
