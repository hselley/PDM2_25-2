import UIKit

var greeting = "Hello, playground"


let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8, 13, 21],
    "Square": [1, 4, 9, 16, 25]
]
// Imprimir los numeros en las listas que están dentro de la Colección
for (key, numbers) in interestingNumbers {
    // Impresión de números de Fibonacci
    if key == "Fibonacci" {
        for number in numbers {
            print(number)
        }
    }

    // Buscamos el número mayor
    var largest = 0
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
    print(largest)
}
