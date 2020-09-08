import UIKit

let a : Float  = -5
let b : Float  = 6
let c : Float  = 1
var discriminant : Float = (b*b)-(4*a*c)
// a*x^2 + b*x + c = 0    D=b^2-4*a*c     x=(-b+- D)/2*a

func x1 () {
    let x1 :Float = (-b + sqrt(discriminant)) / (2 * a)
    print ("X1 = ",x1)
}
func x2 () {
    let x2 :Float = (-b - sqrt(discriminant)) / (2 * a)
    print ("X2 = ",x2)
}



if discriminant > 0 {
    x1 ()
    x2 ()
} else if discriminant == 0 {
    x1 ()

} else {
    print("Решений нет ")
}
