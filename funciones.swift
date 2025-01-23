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

//: Funciones que reciben una secuencia

func sumaMejorada(numeros: Float...) -> Float {
    var suma:Float = 0
    for numero in numeros {
        suma += numero
    }
    return suma
}
print(sumaMejorada(numeros: 1,6,3))
print(sumaMejorada(numeros: 14,65,37,45,21,0,1))
print(sumaMejorada())

//: Funciones anidadas
func funcionPrincipal() -> Int {
    var y = 10
    func funcionAnidada() {
        y += 5
        func funcionAnidadaAnidada() {
            y+=500
        }
        funcionAnidadaAnidada()
    }
    funcionAnidada()
    return y
}
print(funcionPrincipal())

//: Las funciones pueden devolver funciones
func makeIncrement() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return number + 1
    }
    return addOne
}
var increment = makeIncrement()
print(increment(6))

//: Las funciones pueden recibir funciones como argumento
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for number in list {
        if condition(number) == true {
            return true
        } 
    }
    return false
}

func par(n: Int) -> Bool {
    return n%2==0 ? true : false
}

let lista = [3,5,7,87,1,33,79]
print(hasAnyMatches(list: lista, condition: par))

//: Funciones anónimas
// Ejemplo: Una función anónima que recibe la lista y multiplica cada elemento por 3
print(lista.map({
    (number:Int) -> Int in
    let result = 3 * number
    return result
}))

// Sintáxis más concisa
print(lista.map({number in 3 * number}))
