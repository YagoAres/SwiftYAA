import Foundation

//1. OPERADORES ARITMÉTICOS

//Básico
let firstScore = 12
let secondScore = 4

//Podemos sumarlos
let total = firstScore + secondScore

//Restarlos
let difference = firstScore - secondScore

//Multiplicar o dividir
let product = firstScore * secondScore
let divided = firstScore / secondScore

//Hay un operador especial '%' que calucla los restos de la división
let remainder = 13 % secondScore //13/4 --> resto 1
print(remainder)

//2. OPERADOR OVERLAODING
let meaningOfLife = 42
let doubleMeaning = 42 + 42

//Se puede usar '+' en string's
let fakers = "Fakers gonna"
let action = fakers + "fake"
print(action)

//Incluso con matrices
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf
print(beatles)

//3. OPERADORES DE ASIGNACIÓN COMPUESTA
//Swift tine operadores abreviados que combinan un operador con una asignación, por lo que puedes cambiar una varaible en el momento, por ejemplo
var score = 95
score -= 5 //Mismo que: score = score - 5

//De manera similar lo podemos usar en cadenas
var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

//Operadores de comparación
let firstScore2 = 6
let secondScore2 = 4

//Hay 2 operadores, uno que compara igualdad '==' o si son distintos '!='
firstScore2 == secondScore2
firstScore2 != secondScore2

//También hay otros 4 operadores de comparación, '>', '<', '>=' y '<='
firstScore2 < secondScore2
firstScore2 >= secondScore2

print(firstScore2 < secondScore2) //Todos estos devolverán true o false

//4. CONDICIONALES
//Utilizamos condiciones, si la condicion es correcta se corre el código que cumple la condición, por ejemplo
let edadYago = 24
let edadJesús = 26

if edadYago + edadJesús == 50 {
    print ("Sumamos entre los dos 50 años")
}

//Con if else
if edadYago + edadJesús == 51 {
    print ("Sumamos entre los dos 51 años")
}else{
    print ("No sumamos entre los dos 51 años")
}

//Else if
if edadYago + edadJesús >= 51 {
    print ("Sumamos entre los dos más 51 años")
    
}else if edadYago + edadJesús == 50{
    print ("Sumamos entre los dos 50 años")
}else{
    print ("Sumamos entre los dos menos de 50 años")
}

//5. OPERADOR TERNARIO
//Este operador es raramente usado, fuciona con tres valores a la vez, para condiciones simples viene bien porque se simplifica
let firstCard = 11
let secondCard = 10

print (firstCard == secondCard ? "Cards are the same" : "Cards are different")

//Sería el equivalente a esto
if firstCard == secondCard {
    print("Cards are the same")
}else{
    print("Cards are different")
}

//6. SWITCH STATEMENTS
//Si tienes varias condiciones if, else if suele ser más claro usar un switch, por ejemplo
let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Bring up warn")
case "sunny":
    print("Bring yout suncreen")
default: //El default es obligatorio para que el switch se asegure de cubrir todos los escenarios
    print("Enjoy your day")
}
 //7. OPERADORES DE RANGO
 //Swift ofrece dos formas de crear rangos, por ejemplo
let score2 = 70

switch score2 {
case 0..<50: //Entre 0 (incluido) y 50 (sin incluir)
    print("You failed badly")
case 50...70: //Entre 50 y 70, incluidos
    print("You did it OK")
default:
    print("You did great")
}
