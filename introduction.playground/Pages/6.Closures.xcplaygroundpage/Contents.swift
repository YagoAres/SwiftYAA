import Foundation

//1. BASIC CLOSURES
//Puedes crear una funcion y asignársela a una variable
let driving = {
    print("Im driving in my car")
}
//Llamas a la función como si fuera una normal
driving()

//2. ACCEPTING PARAMETERS
//Pueden aceptar parámetros, pero se escriben de forma diferente, por ejemplo
let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}

driving2("London")

//3. RETURNING VALUES
//También pueden retornar valores, se escribe de manera similar a los parámetros

//Ahoremos que devuelva su valor en lugar de imprimirlo
let driving3 = { (place: String) in
    print("I'm going to \(place) in my car")
}

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)

//4. CLOSURES AS PARAMETERS
//Tenermos aqui esta función
let driving4 = {
    print("I'm driving in my car")
}

//Si queremos pasar ese cierre a una función para que pueda ejecutarse dentro de esa funcioón, especificamos el tipo de parámetro como ()--> Void. Eso significa "no acepta parámetros y devuelve Void": la forma en que Swift dice "nada".
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
//Y ahora podemos llamar a nuestra función
travel(action: driving)

//5. TRAILING CLOSURE SYNTAX
//Si el último parámetro de una función es un cierre, Swift le permite usar una sintaxis especial llamada sintaxis de cierre final

//Para demostrar esto, aquí está nuestra travel()función nuevamente. Acepta un action cierre para que pueda ejecutarse entre dos print()llamadas:
func travel2(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel2() {
    print("I'm driving in my car")
}

//6. USING CLUSURES AS PARAMETERS WHEN THEY ACCEPT PARAMETERS

func travel3(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel3 { (place: String) in
    print("I'm going to \(place) in my car")
}

//7. USING CLOSURES AS PARAMETERS WHEN THEY RETURN VALUES

func travel4(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel4 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

//8. SHORTHAND PARAMETERS NAMES

func travel5(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel5 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
 //Pero swift sabe que esa clausula debe ser un string, por tanto se peude quitar
travel5 { place in
    return "I'm going to \(place) in my car"
}
