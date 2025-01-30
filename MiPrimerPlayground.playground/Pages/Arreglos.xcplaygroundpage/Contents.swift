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
//: [Next](@next)
