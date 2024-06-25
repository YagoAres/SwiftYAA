import Foundation


//1. VARIABLES, CONSTANTES Y OPERADORES

//Dadas dos variables, calcular la suma, almacenar el resultado en otra variable e imprimir el resutaldo
let num1 = 3
let num2 = 8

let suma = num1 + num2
print("La suma de \(num1) + \(num2) es \(suma)")

//Calcular el número de segundos en un año almacenando dicho valor en una variable
let dias = 365
let horas = 24
let segundos = 3600
let segundosAño = dias * horas * segundos
print("La cantidad de segundos en un año es \(segundosAño)")

//Partiendo de la anchura y la altura de una pantalla en píxeles, calcular el número total de píxeles de dicha pantalla guardando el resultado en otra variable:
let alto = 720
let ancho = 480
let pixeles = alto * ancho
print("La cantidad de pixeles es \(pixeles)")

//Dado un número, imprimir el último dígito:

let num = 2479
print("La última cifra de \(num) es \(num % 10)")

//Dada la edad de un perro, imprimir la edad equivalente en humanos, teniendo en cuenta que un año para una persona equivale a 7 años para un perro:
let edadPerro = 7
let edadHumano = edadPerro * 7
print("\(edadPerro) años de un perro equivalen a \(edadHumano) años de un humano")

//Dada una cantidad determinada de chicos y chicas, imprimir el porcentaje de cada uno respecto al total:

let hombres = 12
let mujeres = 15
let total = hombres + mujeres
let porcentajeHombres = (hombres * 100) / total
let porcentajeMujeres = (hombres * 100) / total
print("De \(total) alumnos, \(mujeres) son mujeres y \(hombres) son hombres, es decir, \(porcentajeHombres)% de hombres y \(mujeres)% de mujeres")


//2. CONTROL DE FLUJO
let num3 = 3
let num4 = 4
if num3 > num4 {
    print("El número \(num1) es mayor que \(num2)")
}
else if num3 > num4 {
    print("El número \(num2) es mayor que \(num1)")
}

//Dado un número, imprimir un mensaje indicando si es par o impar:

let num5 = 23
// Con if
if num5 % 2 == 0 {
    print("El numero \(num5) es par")
}
else {
    print("El numero \(num5) es impar")
}
// Con el operador ?
print("El numero \(num5) es " + (num5 % 2 == 0 ? "par" : "impar"))

//Dados dos números, imprimir un mensaje diciendo si el primero es divisible entre el segundo o no:

let num6 = 3
let num7 = 1
if num2 != 0 && num6 % num7 == 0  {
    print("El número \(num6) es divisible entre \(num7)")
}
else if num7 != 0 && num6 % num7 != 0 {
    print("El número \(num6) no es divisible entre \(num7)")
}
else {
    print("No se puede dividir entre 0")
}

//Dadas tres variables, comparar el valor que contienen e indicar si todas ellas son diferentes, o si por el contrario, dos variables o las tres contienen el mismo valor:
var a = 2
var b = 2
var c = 2
if (a == b) || (a == c) || (b == c) {
    print("Al menos dos variables tienen el mismo valor")
} else {
    print("Todas las variables tienen valores diferentes")
}
