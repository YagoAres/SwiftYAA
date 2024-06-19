import Foundation

//1.FUNCIONES
//Nos permiten reutilizar código
func printHelp(){
    let message = "Welcome to MyApp"
    print(message)
}

printHelp()

//2. FUNCIONES CON PARÁMETROS
//Nos permite pasar valores a las funciones

func square(number: Int){
    print(number + number)
}

square(number: 10)

//3. RETURN
//Además de recibir datos, las funciones también pueden enviar datos, por ejemplo
func square2(number: Int) -> Int {
    return number * number
}

//Ahora podemos tomar ese valor de retorno cuando se ejecuta la función e imprimirlo
let result = square2(number: 8)
print(result)

//5. Parameter labels
//Swift nos permite proporcionar dos nombres para cada parámetro, uno para llamar externamente a la función y otro internamente, tan sencillo como:
func sayHello(to name: String){
    print("Hello, \(name)!")
}
 sayHello(to: "Yago")

//6. OMITTING PARAMETERS LABEL
//Se puede obtener el mismo comportamiento en sus propias funciones usando un guión bajo, _

func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Josh")

//7. DEFAULT PARAMETERS
//Puede darle a sus propios parámetros un valor predeterminado simplemente escribiendo un =
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
//Eso se puede llamar de dos maneras:
greet("Taylor")
greet("Taylor", nicely: false)


//8. VARIADIC FUNCTIONS
//Se pueden pasar varias variables en una sola función
func square2(numbers: Int...) {
for number in numbers {
    print("\(number) squared is \(number * number)")
 }
}

square2(numbers: 1, 2, 3, 4, 5) //

//9. THROWING FUNCTIONS
// Swift nos permite arrojar errores de funciones marcándolas como throwsantes de su tipo de retorno y luego usando la palabra throw cuando algo sale mal
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

//10. RUNNING THROWING FUNCTIONS
//A Swift no le gusta que se produzcan errores cuando se ejecuta su programa, lo que significa que no le permitirá ejecutar una función que genere errores por accidente.
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}
