import UIKit

var money : Float = 1000
let percent : Float = 5
let year : Int = 5


for i in 1...year {
    money = money+((money/100)*percent)
    print("Сумма вклада за \(i) год ",NSString(format:"%.2f", money))
}



