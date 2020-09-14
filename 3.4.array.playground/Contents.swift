import UIKit
//Задние 3

var arr = [Int]()
var i=0
for  i in 0...99 {
    arr.append(i)
}
//Задание 4

i = arr.count - 1

while i >= 0 {
    if  arr[i]%2 == 0 || arr[i]%3 == 0  {
        arr.remove(at: i)
    }
    i-=1
}
print(arr)

// второй вариант урощеный

arr.removeAll { value -> Bool  in
    value % 2 == 0 || value % 3 == 0
}
print(arr)
