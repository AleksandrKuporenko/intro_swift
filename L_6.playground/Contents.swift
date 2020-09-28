import UIKit

//Задание 1
protocol Shape {
    var perimetr: Float { get set }
    var area: Float { get set }
}


    
    
    
struct Rectangle: Shape {
     var area: Float {
           get {
               return (sideA * sideB)
        } set {}
       }
    
    var perimetr: Float {
        get {
            return (sideA + sideB) * 2
        }
        set {}
    }
    
    

    var sideA: Float
    var sideB: Float
    
}



struct Circle: Shape {
    var perimetr: Float {
        get {
            return 2 * Float.pi * radius
        } set {}
    }
    
    var area: Float {
        get {
            return Float.pi * radius * radius
        } set {}
    }
    
    var radius: Float
    
}
    
struct Stack<T: Shape>: CustomStringConvertible {
    var description: String {
        return "\(elements[1].area) "
    }
    
    var elements: [T] = []
    
    mutating func push(_ element: T) {
        elements.append(element)
    }
    mutating func pop() -> T? {
        return elements.removeLast()
    }
    

}

let circle = Circle(radius: 10.2) //дальше команды которые мы делали на уроке ломают playGround и дальше работать не возмодно поэтому я пропущу пару строк с командами

    

 

//Задание 2
 
var arrPeriment = [123, 154, 567, 34, 39, 238]
 
let arrPerSort = arrPeriment.map { element -> String in
    return "\(element)"
}

print(arrPerSort)


let arrPerSort1 = arrPeriment.filter { $0 % 2  == 0 }
print(arrPerSort1)

let arrPerSort2 = arrPeriment.map { $0 * $0 }
print(arrPerSort2)

let arrPerSort3 = arrPeriment.sorted {$0 < $1}
print(arrPerSort3)
