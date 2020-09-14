import UIKit


var fibonacci  = [0,1]

func sumPreviousTwoNumbers (a : Int, b : Int){
    fibonacci.append(a + b)
}
var i = 0

while i < 50 {
    sumPreviousTwoNumbers(a: fibonacci[i],b: fibonacci[i+1])
    i+=1
}


fibonacci
