# Integración

Vamos a crear un servicio REST

http://miwebserver:8443/calculadora/operacion/numero1/numero2 ? QueryString
                                                             ?param1=valor1&param2=valor2
Vamos a montar una calculadora
GET         /calculadora/operacion/numero1/numero2
Debe devolver el resultado
                        suma
                        resta
                        multiplicacion
                        division












EXPONER UNOS ENDPOINTS
GET             /usuarios/
                Consultar el postgre y devlver los datos en JSON
                
                
                
                
                
GET             /usuarios/{id}
                Consultar el postgre y devlver los datos del usuario en JSON





POST            /usuarios/
                Dar de alta un usuario y devolver sus datos (ID incluido)
    El programa que hace la petición (request) envía un JSON con los datos (payload)