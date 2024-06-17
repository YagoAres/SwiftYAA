import UIKit

//Variables

//Una vez que la variable se declara, se puede cambiar tantas veces como se quiera, quedándose con el último valor declarado, siempre que sea el mismo tipo de dato

var message = "Hello, playground"
message = "Hola mundo"
message = "Último mensaje"

print(message)

//Boleano
var varibaleBool = true
//Int
var varibleInt = 10

print(varibaleBool)
print(varibleInt)

//Para especificar el tipo de dato (para casos concretos)

var variableFloat: Float = 10.0

//Se pueden declarar varaible en la misma linea
var cordenadaX = 0.0, cordenadaY = 0.0, cordenadaZ = 0.0

//Constantes, no se le puedes modificar la variable

let constante = "Swift"
//constante = "Hola"

//Podemos crear alias
typealias Name = String
let username : Name = "Yago Ares"

//Tuplas
let user = ("Hola","Yago")

print(user.0)

let (firstValue, secondValue) = ("Primero", "Segundo ")
print(firstValue)

//Interpolación

var score = 85
var str = "Your score was\(score)"
 
 

//Anotaciones, es decir puedes especificar el tipo de datos que quieres

let message1 = "Hello, playground"
let album: String = "Reputation"
let year: Int = 2024
let height: Double = 1.78
let booleanValue: Bool = true
