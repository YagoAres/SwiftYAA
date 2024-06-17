import Foundation

//ARRAYS
let yago = "Yago Ares"
let jesus = "Jesús Ares"
let mama = "Ana Armesto"

let miFamilia = [yago, jesus, mama]
print(miFamilia[1])

//También puedes especificar el tipo de dato, en esta caso un array de strings
var cities: [String] = ["London" , "Paris", "New York", "Praga"]

//Array enteros
var scores: [Int] = [10, 12, 9]

//Array de boleanos
var readings: [Bool] = [false, false, true, false]
//Y así con más tipos de datos
//Recordar que no hace falta especificar el tipo de dato

//CONJUNTOS/SETS
//No se almacenan en ningún orden, es decir en un orden aleatorio y todos los elementos debes ser únicos
let colors = Set(["red", "green", "blue", "yellow"])
print(colors) //Si observas en las salida ves que no coincide con el orden que yo cree, swift no ofrece garantías de su orden

//Si por ejemplo insertamos un elemento duplicado, estos se ignorar
let colors2 = Set(["red", "green", "red", "blue"])
print(colors2)

//Conjuntos con enteros
let numeros = Set([1,2,2,3,4,3])
print(numeros)
