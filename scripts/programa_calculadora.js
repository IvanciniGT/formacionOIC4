function calcular(operacion, numero1, numero2) {
    var resultado = undefined
    switch (operacion){
        case 'suma':
            resultado = numero1 + numero2
            break;
        case 'resta':
            resultado = numero1 - numero2
            break;
        case 'multiplicacion':
            resultado = numero1 * numero2
            break;
        case 'division':
            resultado = numero1 / numero2
            break;
        case 'default':
            resultado = undefined
    }
    return resultado
}

var resultado =  calcular("suma", 4,5)
console.log(resultado)