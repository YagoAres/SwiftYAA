import Foundation


//Swift tiene varias maneras de escribir bucles, pero en esencia es siempre lo mismo, correr código repetidamente hasta que la condición no se cumpla
 
//1. BUCLE FOR
//Por ejemplo tenemos un rango de números
let count = 1...10

for number in count { //Recorre todas las posiciones de count
    print("Number is \(number)")
}

//También podemos hacerlo con arrays
let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Spotify")
}

//Si no usas una constante en el for, pon _ para que swift no cree valores innecesarios
print("Players gonna")

for _ in 1...5 { //Ejecuta 5 veces la sentencia
    print("play")
}

//2. BUCLE WHILE
//Otra forma de escrivir bucles es usando while, le das una condición y el bucle se ejecuta hasta que la condición falla, por ejemplo
var number = 1

while number <= 20 {
    print(number)
    number += 1 //Incrementa en 1
}

print("finish")

//3. REPEAT LOOP'S
//No es una forma común de escribir bucles, es idéntico a un while excepto que la condición a verificar viene al final
var number2 = 1

repeat{
    print(number2)
    number2 += 1
} while number2 <= 20

print("finish")

//Esta condicion con while nunca se ejecutará, nos lo dice el propio editor
while false {
   // print("This is false")
}

//Mientras que con repeat siempre se ejecutará al menos 1 vez ya que la condición se ejecuta al final
repeat {
    print("This is false")
} while false

//4. EXITING LOOP'S
//Puedes salir del bucle usando la palabra break
var countDown = 10

while countDown >= 0 {
    print(countDown)
    
    if countDown == 4{
        print("I'm getting bored. Let's go now!")
        break
    }
    
    countDown -= 1
}
