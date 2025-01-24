import Foundation

// Secante es una función declarada con parámetros nombrados
func secante(p0:Double, p1:Double, TOL:Double, n0:Int8) -> Double {
    var i = 2
    var p0 = p0
    var p1 = p1  
    var q0 = f(p0)
    var q1 = f(p1) 
    // Inicio del método
    while i<=n0 {
        var p = p1 - q1*(p1-p0)/(q1-q0) // Cálculo de la siguiente aproximación
        print("p_\(i) = \(p)")
        if abs(p-p1) < TOL {
            print("ER = \(abs(p-p1)/abs(p)*100) %")
            return p
        }
        i += 1
        p0 = p1
        q0 = q1
        p1 = p
        q1 = f(p)
    }
    print("El método fracasó luego de \(n0) iteraciones.")
    return 0
}

// f es una función declarada con parámetros sin nombre
func f(_ x:Double) -> Double {
    return pow(x, 3) - 2*pow(x, 2) - 5
}

// Llamada al método
print(secante(p0: 1, p1: 4, TOL: 1e-4, n0: 50))