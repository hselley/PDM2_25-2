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
import CoreGraphics
// Circulo unitario: Función tradicional
let unitCircle : (center: (x: CGFloat, y: CGFloat), radius: CGFloat) = ((0, 0), 1)
print(unitCircle)
func doubleRadius(ofCircle circle: (center: (x: CGFloat, y: CGFloat), radius: CGFloat)) 
    -> (center: (x: CGFloat, y: CGFloat), radius: CGFloat) {
        return (circle.center, circle.radius*2)
}

let circulo1 = doubleRadius(ofCircle: (center: (x:2, y:5), radius: 6.5))
print(circulo1)
let circulo2 = doubleRadius(ofCircle: unitCircle)
print(circulo2)

// Circulo unitario: Alias de la tupla
typealias Circle = (center: (x:CGFloat, y:CGFloat), radius: CGFloat)
let unitCircle2: Circle = ((0, 0), 1)
print(unitCircle2)

func doubleRadiusPremium(circle: Circle) -> Circle {
    return (circle.center, circle.radius*2)
}
let circulo3 = doubleRadiusPremium(circle: Circle((5,4),7.32))
print(circulo3)

//: Uso útil -> Intercambio de valores
var a = "Marty McFly"
var b = "Emmet Brown"
var c = "Great Scott!!"
var d = "Hello, is anbody home?"

(a, b, c, d) = (d, c, b, a)
print(a, b, c, d)

let Tupla = (first: true, second: false)

switch Tupla {
    case (false, false):
        print("FF")
    case (false, true):
        print("FT")
    case (true, false):
        print("TF")
    case (true, true): 
        print("TT")
}

