func hola() {
    print("Hello world")
}

hola()

func miNumero(n:Int) {
    print("El número es \(n)")
}
miNumero(n:5)

func suma(n1:Int, n2:Int) {
    print(n1 + n2)
}
suma(n1:4, n2:5)

func producto(n1: Int, n2: Int) -> Int {
    var p:Int = 0
    for _:Int in 1...n1 {
        p += n2
    }
    return p
} 
print(producto(n1: 4, n2: 6))

func factorialCiclico(n:Int) -> Float {
    var f:Float = 1   
    for i in 1...n {
        f *= Float(i)
    }
    return f
}
let num = 30
print("\(num)! = \(factorialCiclico(n: num))")

func factorialRecursivo(n:Int) -> Float {
    if n == 0 {
        return 1    
    } else {
        return Float(n) * factorialRecursivo(n: n-1)
    }
}
print("\(num)! = \(factorialRecursivo(n: num))")

func Fibonacci(n: Int) -> Int {
    if n<=1 {
        return n
    } else {
        return Fibonacci(n: n-1) + Fibonacci(n: n-2)
    }
}
for i in 0...num {
    print("\(i): \(Fibonacci(n: i))")
}
