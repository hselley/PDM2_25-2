//: Diccionario

// Creación de un diccionario vacío
// Opción 1: La más formal
var books1: Dictionary<Int, String> = Dictionary<Int, String>()
print(books1)

// Opción 2: Otra forma
var books2 = [Int: String]() 
print(books2)

// Opción 3: Una más
var books3: [Int: String] = [:]
print(books3)

// Opción 4: La última
var books4: [Int: String]


var books5: [Int: String] = [1: "Book 1", 2: "Book 2"]
var books6: [Int: String] = [3: "Book 3", 4: "Book 4", 5: "Book 5", 
    6: "Book 6", 7: "Book 7", 8: "Book 8"]
print(books6)

for (id, book) in books6 {
    print("\(id): \(book)")
}

for (_, book) in books6 {
    print(book)
}

for book in books6.values {
    print(book)
}

for id in books6.keys {
    print(id)
}

// Diccionario multinivel
var myDictionary: [String: [Int: String]] = 
    [
        "Toys": 
            [1: "Car", 2: "Trucks", 3: "Doll"],
        "Interests":
            [1: "Science", 2: "Math", 3: "Music"]
    ]

// Unwrapping
if let v = myDictionary["Toys"]?[2] {
    print(v)
}

// Esta forma no se recomienda, la aplicación puede colapsar
let u = myDictionary["Toys"]?[2]
print(u)

// Fusion de diccionarios
var dict1 : [String: Int] = ["Mohan": 75, "Raghu": 82, "John": 79]
var dict2 : [String: Int] = ["Surya": 91, "John": 80, "Sarana": 92]

// Conservando valores originales
dict1.merge(dict2){(current, _) in current}
print("Dictionary 1")
for (k, v) in dict1 {
    print("\(k): \(v)")
}

// Reemplazando los valores originales
var dict3 : [String: Int] = ["Mohan": 75, "Raghu": 82, "John": 79]
var dict4 : [String: Int] = ["Surya": 91, "John": 80, "Sarana": 92]

dict3.merge(dict4){(_, new) in new}
print("Dictionary 3")
for (k, v) in dict3 {
    print("\(k): \(v)")
}

