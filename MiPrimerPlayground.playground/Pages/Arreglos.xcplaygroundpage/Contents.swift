//: [Previous](@previous)

// Declaración implícita
let arreglo = [1,2,3,4]
print(arreglo)

// Declaración explícita
let arreglo2: [Float] = [1,2,3,4]
print(arreglo2)

// Arreglos multidimensionales
// 2 dimensiones
let arreglo3 = [
    [1,2,3,4],
    [5,6,7,8],
    [9,0,1,2]
]
print(arreglo3)

let arreglo4: [[Float]] = [
    [1,2,3,4],
    [5,6,7,8],
    [9,0,1,2]
]

// 3 dimensiones
let arreglo5: [[[Float]]] = [
    [
        [1,2,3,4],
        [5,6,7,8],
        [9,0,1,2]
    ],
    [
        [1,2,3,4],
        [5,6,7,8],
        [9,0,1,2]
    ],
    [
        [1,2,3,4],
        [5,6,7,8],
        [9,0,1,2]
    ]
]
print(arreglo5)

// Declaración de un arreglo vacío de 7 dimensiones
let arreglo7: [[[[[[[Int]]]]]]] = []
print(arreglo7)

// Acceso y modificación de datos
let arreglo8 = [3,2,1,4]
print("Arreglo de una dimensión: \(arreglo8)")
print("Numero de elementos: \(arreglo8.count)")
print("Numero de elementos: \(arreglo3.count)")
print("Numero de elementos: \(arreglo4.count)")
print("Numero de elementos: \(arreglo5.count)")

// Acceso a un valor
print(arreglo8[2])
print(arreglo5[1][1][2])

// isEmpty: True or False
var shoppingList = ["Eggs", "Milk"]
print("The shoping list contains \(shoppingList.count) items")

if shoppingList.isEmpty {
    print("The shopping list is empty")
} else {
    print("The shopping list isn't empty")
}

// Agregar elementos a un arreglo
shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
print("The shoping list contains \(shoppingList.count) items")

shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
print("The shoping list contains \(shoppingList.count) items")
print(shoppingList)

var someItems = shoppingList[4...6]
print(someItems)

shoppingList[4...6] = ["Bananas", "Apples", "Oranges", "Potatoes"]
print(shoppingList)


// insertar elementos
shoppingList.insert("Maple Syrup", at: 3)
print(shoppingList)

// Iterar sobre el arreglo
for item in shoppingList {
    print(item)
}

for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}

// Arreglos vacíos
let x1: [Int]
let x2: [[String]]

// Definir un arreglo no vacío
let y1 = Array(repeating: 5, count: 3)
print(y1)

let y2 = Array(repeating: 0, count: 20)
print(y2)

let y3 = Array(repeating: Array(repeating: 9, count: 4), count: 5)
print(y3)

let y4 = Array(repeating: Int.random(in: 0..<20), count: 10)
print(y4)

let y5 = Array(repeating: String(), count: 10)
print(y5)

//: [Next](@next)
