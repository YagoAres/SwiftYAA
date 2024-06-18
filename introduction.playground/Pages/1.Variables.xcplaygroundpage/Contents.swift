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
var cordenatesX = 0.0, cordenatesY = 0.0, cordenatesZ = 0.0

//Constantes, no se le puedes modificar la variable

let constant = "Swift"
//constante = "Hola"

//Podemos crear alias
typealias Name = String
let username : Name = "Yago Ares"

//Interpolación
var score = 85
var str = "Your score was\(score)"
 
//Anotaciones, especificar el tipo de datos que quieres
let message1 = "Hello, playground"
let album: String = "Reputation"
let year: Int = 2024
let height: Double = 1.78
let booleanValue: Bool = true
