import Foundation

//1. ARRAYS
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

//2. CONJUNTOS/SETS
//No se almacenan en ningún orden, es decir en un orden aleatorio y todos los elementos debes ser únicos
let colors = Set(["red", "green", "blue", "yellow"])
print(colors) //Si observas en las salida ves que no coincide con el orden que yo cree, swift no ofrece garantías de su orden

//Si por ejemplo insertamos un elemento duplicado, estos se ignorar
let colors2 = Set(["red", "green", "red", "blue"])
print(colors2)

//Conjuntos con enteros
let numeros = Set([1,2,2,3,4,3])
print(numeros)

//3. TUPLAS
//Puedes resultar parecidos a los arrays, pero esots no puedes agregar ni eliminar elementos, son de tamaño fijo
//No puedes cambiar el tipo de elementos en una tupla
var name = (first: "Yago", last: "Ares")
//Puedes acceder a los elementos usando posiciones numéricas o nombrándolos
print(name.0)
print(name.first)

//En resumen los arrays, tuplas y conjuntos pueden resultar paracidos, pero tienen diferentes aplicaciones
 //Por ejemplo si se necesita una colección fija, donde cada elemento tiene un nombre o posición específico se usan tuplas
let address = (house:24, street:"Obispo Aguirre", city: "Lugo")

//Si se necestia una colección de valores que deben ser únicos, o se necestia poder verificar si un elemento está ahi de forma rápaida, se suele usar conjuntos
let food = Set(["cheese", "milk", "apple"])

//Si se necesita valores que puedan contener duplicados, o si el orden de los elemnots es importante, se usan arrays
let mammals = ["dog", "horse", "dolphin"]

//Los arrays son los más comunes

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//4. DICCIONARIOS
//Son parecidos a los arrays pero en lugar de almacenar cosas en una posición entera, accedes a ellas usando lo que quieras
let heights = [
    "Yago Ares": 1.74,
    "Jesús Ares": 1.76,
]

heights["Yago Ares"]

print(heights)
 
//Con anotaciones sería:

let heights2:[String: Double] = [
    "Yago Ares": 1.74,
    "Jesus Ares": 1.76,
]

//Si intenras leer un valor de un diccionario usando una clave que no existe devuleve nil, se puede solucionar el problema dando un valor por defecto

let favoriteFood = [
    "Yago Ares": "Pizza",
    "Jesús Ares": "Fabada",
]

favoriteFood["Papá", default: "Unkown"]

//4. ENUMERACIONES
//Es una forma de definir grupo de valores, por ejemplo
//Estas 3 cadenas son diferentes por tanto significan cosas diferents
let result = "failure"
let result2 = "failed"
let result3 = "fail"

//Con la enumeracions podemos definir el resultado como success o failure asi:
enum Result {
    case success
    case failure
}

let result4 = Result.failure

print(result4)

//4. a) VALORES ASOCIADOS A LA ENUMERACIÓN
//Además de almacenar un valor simple, podemos almacenar valores asociados, así podemos adjuntar información adicional pa que puedan represntar datos más matizados, por ejemplo

enum Activity{
    case bored
    case running(destination: String)
    case talking(topic:String)
    case singing(volume:Int)
}

let talking = Activity.talking(topic:"football")
print(talking)

//4. b) enumeraciones valores brutos
//A veces es necesarios poder asignar valores para que tengan significado, por ejemplo
enum Planet: Int { //Swift por defecto asingará auto a cada uno de ellos un número a partir de 0
    case mercury
    case venus
    case earth //Por ejemplo a earth se le dará 2
    case mars
}

let earth = Planet(rawValue: 2)

//Puedes asignar a uno o más casos un valor específico y Swift genera el resto. Por ejemplo no es muy natural para nostros pensar que la Tierra es el segundo planeta, podemos escribir esto

enum Planet2: Int {
    case mercury = 1 //Le asigno 1 y swift seguirá la secuencia
    case venus
    case earthn //Earth sería 3
    case mars
}

