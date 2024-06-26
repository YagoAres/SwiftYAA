import Foundation

//1. BASIC STRUCTS (lo que viene siendo clases)
//A las estructuras se les pueden dar sus propias variables, constantes, sus propias funciones, luego crearlas y usarlas como desee.

struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)
//Podemos cmabiarlas como si fuesen variables normales
tennis.name = "Lawn tennis"

//2. COMPUTED PROPERTIES

// Swift tiene un tipo diferente de propiedad llamada propiedad calculada , una propiedad que ejecuta código para determinar su valor

struct Sport2 {
    var name: String //Como puede ver, olympicStatusparece normal String, pero devuelve valores diferentes según las otras propiedades.
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport2(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

//3. PROPERTY OBSERVERS
//Los observadores de propiedades le permiten ejecutar código antes o después de cualquier cambio de propiedad
struct Progress {
    var task: String
    var amount: Int
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

 //Pero por ejemplo queremos que imprima un mensaje cada vez que el valor amount cambie, para eso podemos usar un didSet

struct Progress2 {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress2 = Progress2(task: "Loading data", amount: 0)
progress2.amount = 30
progress2.amount = 80
progress2.amount = 100

print(progress2)

//También se puede usar willSet pera tomar meddias antes de que se cambie la propiedad, pero este es poco común

//4. METHODS IN FUNCTIONS

//Las estructuras pueden tener funciones dentro de ellas, y esas funciones pueden usar las propiedades de la estructura según sea necesario

struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()

//5. MUTATING METHODS

//Si una estructura tiene una propiedad variable pero la instancia de la estructura se creó como una constante, esa propiedad no se puede cambiar; la estructura es constante, por lo que todas sus propiedades también son constantes independientemente de cómo se crearon
//Swift no te permitirá escribir métodos que cambien propiedades a menos que lo solicites específicamente
//Cunado se quiera cambiar la propiedad, se debera usar mutating, por ejemplo

struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()

//6. PROPERTIES AND METHODS OF STRINGS
//Los string no dejan de ser estructuras, por tanto tienen sus propios métodos y propiedades que podemos usar para consultar y manipular la cadena
let string = "Do or do not, there is no try."

print(string.count) //Se puede leer la cantidad de caracteres con esta propiedad
print(string.hasPrefix("Do")) //Devuelve veraddero si la candena comienza por letras específicas
print(string.uppercased()) //Poner en mayúscula la cadena
print(string.sorted()) //Ordenar las letras de la cadena en una matriz

//Hay mcuhas propiedades más, poniendo en este caso 'string.' te saldrán sugerencias

//7. PROPERTIES AND METHODS OF ARRAYS
//Los arrays también son estructuras, tiene sus propios métodos

var toys = ["Woody"]

print(toys.count) //Número de elementos de una matriz

toys.append("Buzz") //Agregar un nuevo elemento a la matriz

toys.firstIndex(of: "Buzz") //Saber en que posición estña el elemento de la matriz, en este caso primer posición (emepzamos en 0)
print(toys.sorted()) //Ordenar alfabeticamente

toys.remove(at: 0) //Eliminar un elemento de la matriz, en este caso el que opcupa la posición 0



