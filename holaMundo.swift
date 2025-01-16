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