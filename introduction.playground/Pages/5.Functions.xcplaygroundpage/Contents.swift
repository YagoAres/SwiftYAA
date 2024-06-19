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
