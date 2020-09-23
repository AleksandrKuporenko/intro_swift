import UIKit

//Задание 1
protocol Car {
   
    var wheel: Int { get }
    
    func go () -> String
    
}

//Задание 2
extension Int {
    func enginState() -> Bool {
        return  self % 4 == 0
    
}

}

//Задание 3

class TrunkCar: Car {
    
    func go () -> String {
        return "Go"
    }
    
    var wheel: Int
    var trunkVolume: Int

    init (trunkVolume: Int, wheel: Int)  {
        self.trunkVolume = trunkVolume
        self.wheel = wheel
        }
    }
    
    

enum RaceCarType {
    case rally, drag, drift
}

class SportCar: Car  {
    
    func go () -> String {
        return "Go race"
    }

    var type: RaceCarType
    var wheel: Int
    
    init (type: RaceCarType, wheel: Int ){
        self.type = type
        self.wheel = wheel
    }
}


  
//Задание 4
extension SportCar: CustomStringConvertible {
    var description: String {
       return "Количество колес у машины \(wheel)"
    }
    
}
 
//Задание 5
var car3 = TrunkCar(trunkVolume: 1000, wheel: 4)
var car1 = SportCar(type: .drift, wheel: 4)
car1.wheel.enginState()
car3.wheel.enginState()

var car2 = SportCar(type: .drift, wheel: 4)
print(car2.description)
 

//Задание 6
print("Едем на гонку \(car2.type)")
print(car2.go())
 

