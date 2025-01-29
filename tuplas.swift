//: Tuplas 

var numbers: (optionalFirst: Int?, middle: String, last: Int)

numbers = (nil, "dos", 3)

// Unwraping
if let first = numbers.optionalFirst {
    print(numbers.optionalFirst)
}
print(numbers.middle)
print(numbers.last)


let myTuple = (name: "Some Name", age: 26)
let (first, second) = myTuple
print(first)
print(second)
print(myTuple.0)

let longTuple = ("ichi", "ni", "san")
let (_, _, third) = longTuple
print(third)

// El for no funciona con las tuplas porque necesitan conformar una Secuencia
// for elment in longTuple {
//     print(elment)
// }

// Función ambigua que forma una tupla
func tupleCreator() -> (Int, String) {
    return (3, "Hello")
}
let tuple = tupleCreator()
print(tuple.0)
print(tuple.1)

// Función explícita
func tupleCreatorPro() -> (anInteger: Int, aString: String) {
    return (3, "Hello")
}
let tuplePro = tupleCreatorPro()
print(tuplePro.anInteger)
print(tuplePro.aString)

print(tuplePro)

// Mega-Biblioteca de swift
import Foundation
// Circulo unitario

// Método que construya una pseudo-clase circulo y métodos