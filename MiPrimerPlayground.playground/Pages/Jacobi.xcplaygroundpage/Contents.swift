//: [Previous](@previous)
//: Método de Jacobi
import Foundation

// Definir la función Jacobi: Ax=b
func Jacobi(A:[[Double]], b:[Double], TOL:Double, N:Int) -> [Double] {
    let n = A.count
    var x0 = Array(repeating: Double(), count: n)
    var x = Array(repeating: Double(), count: n)
    
    // Rutina principal
    var k=1
    while k<=N {
        print("Iteracion \(k)")
        for i in 0..<n {
            var suma = 0.0
            for j in 0..<n {
                if j != i {
                    suma += A[i][j]*x0[j]
                }
            }
            x[i] = (-suma + b[i])/A[i][i]
        }
        print(x)
        if norma(x: restaVectorial(x: x, y: x0)) < TOL {
            print("El método encontró la aproximación en \(k) iteraciones.")
            return x
        }
        k += 1
        x0 = x
    }
    print("El método fracasó luego de \(N) iteraciones.")
    return x
}

// Función que calcula la resta vectorial de dos vectores
func restaVectorial(x: [Double], y: [Double]) -> [Double] {
    var resta = Array(repeating: Double(), count: x.count)
    
    for i in 0..<x.count {
        resta[i] = x[i] - y[i]
    }
    
    return resta
}

// Función que calcula la norma de un vector
func norma(x: [Double]) -> Double {
    var r = 0.0
    for i in 0..<x.count {
        r += x[i]*x[i]
    }
    return sqrt(r)
}

// Ejemplo 1
let A: [[Double]] = [
    [10, -1, 2, 0],
    [-1, 11, -1, 3],
    [2, -1, 10, -1],
    [0, 3, -1, 8]
]
let b: [Double] = [6, 25, -11, 15]
let x = Jacobi(A: A, b: b, TOL: 0.01, N: 50)
print(x)
//: [Next](@next)
