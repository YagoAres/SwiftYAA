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

//5. EXITING MULTIPLE LOOP'S (
//Si se coloca un bucle dentro de otro bucle se llama bucle anindado, por ejemplo
for i in 1...10 {
    for j in 1...10{
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}

//Si quisiéramos salir a mitad de camino, tendríamos que hacer dos cosas. Primero, le damos una etiqueta al bucle exterior. Después agrega nuestra condición dentro del bucle interno, luego úsala break outerLoop para salir de ambos bucles al mismo tiempo:
outerLoop: for i in 1...10 { //Un for de 1 al 10
    for j in 1...10 {
        let product = i * j //Se hace el producto
        print ("\(i) * \(j) is \(product)")

        if product == 50 { //Si el producto llega a 50
            print("It's a bullseye!")
        break outerLoop //Y se terminas el bucle con el break, porque si no continuaría ejecutándose con los números restantes, es decir del 6 al 10
        }
    }
}

// 6. SKIPPING ITEMS
//Como has visto, el break sale de un bucle. Pero si solo desea omitir el elemento actual y continuar con el siguiente, debe usar continue en su lugar
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}

//El operador restante calcula cuántas veces cabe 2 en cada número en nuestro ciclo y luego devuelve lo que sobra. Entonces, si sobra 1, significa que el número es impar, por lo que podemos usar continuepara omitirlo.

// 7. BUCLES INFINITOS
var counter = 0

while true { //Como esto siempre se cumple, se ejecutara infinitamente
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}
