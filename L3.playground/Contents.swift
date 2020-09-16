import UIKit


//Задание №1

struct SportCar {
    let motorVolume: Float
    let color: String
    let seat: Int
    let year: Int
    
}

let porshe = SportCar(motorVolume: 1.6, color: "green", seat: 4, year: 2005)
 
porshe.color

struct TruckCar {
    let motorVolume: Float
    let seat: Int
    let year: Int
    let trunkVolume: Int
    
}

let kamaz = TruckCar(motorVolume: 5.0, seat: 3, year: 2000, trunkVolume: 1500)

kamaz.trunkVolume


//Задание №2

struct Car {
    
    enum EnginState {
        case isOn
        case isOff
    }
    enum PositionWindow {
        case isUp
        case isDown
    }
    
    let model: String
    var year: Int
    let trunkVolume: Int
    var enginState: EnginState = .isOff
    var window: PositionWindow = .isUp
 
    //задание №3
    mutating func handleEngine (){
        switch self.enginState {
        case .isOff:
            print("Двигатель включили")
            self.enginState = .isOn
        case .isOn:
            print("Двигатель выключили")
            self.enginState = .isOff
        }
    }
    
        mutating func liftingWindow (){
            switch self.window{
            case .isDown:
                print("Окна подняты")
                self.window = .isUp
            case .isUp:
                print("Окна опущены")
                self.window = .isDown
            }
        
        }
    
   
    
}
var car = Car(model: "Tesla", year: 2020, trunkVolume: 500)


//Задание 4
car.handleEngine()
car.liftingWindow()
car.liftingWindow()
//Задание 5
var car1 = Car(model: "Audi", year: 2015, trunkVolume: 500, enginState: .isOn, window: .isUp)
var car2 = Car(model: "BMW", year: 2017, trunkVolume: 635, enginState: .isOn, window: .isDown)
car2.model
car2.year = 2020

// Задание 6

print("Модель машины \(car2.model), Год выпуска \(car2.year)" )

