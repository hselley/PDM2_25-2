// Comentarios en Swift
//: Primeros pasos en swift
print("Hola mundo")

//: Declaración de variables
var x = 1
print(x)

var y:Int = 2
print(y)

var 🍎: Int = 5
print(🍎)

var 🍐:String = "pera"
print(🍐)

var 🥭:String = "🥭"
print(🥭)

var 😜:Int = 4
var 🥹:Int = 6
print(😜 + 🥹)

//: Constante
let mango:String = "🥭"
let manzana:String = "🍎"
print(mango + manzana)

//: # Control de flujo
//: ## If-else
if ("🍎" == "manzana") {
    print("Correcto")
} else {
    print("Incorrecto")
}

//: Ciclo For
for i:Int in 0...9 {
    print(i)
}
print("")
for i:Int in 0..<9 {
    print(i)
}

let prime = [2, 3, 5, 7, 11, 13]
for numero in prime {
    print(numero)
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8, 13, 21],
    "Square": [1, 4, 9, 16, 25]
]
// Imprimir los numeros en las listas que están dentro de la Colección
var largest = 0
for (key, numbers) in interestingNumbers {
    // Impresión de números de Fibonacci
    if key == "Fibonacci" {
        for number in numbers {
            print(number)
        }
    } 

    // Buscamos el número mayor
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
    
}
print(largest)

// While
var n = 2
while n<100 {
    n = n * 2
}
print(n)

// do-while 
var m = 2
repeat {
    m = m * 2
} while m < 100
print(m)

// Curiosidades de For
var firstLoop = 0
for i in 0...3 {
    firstLoop += i
}
print(firstLoop)

