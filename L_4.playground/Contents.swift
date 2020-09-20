import UIKit

enum Transmission {
    case auto, mechanical
}

enum EnginState {
    case isOn, isOff
}

enum Color: String {
    case white, red, blue, green, yellow, black
}

class Car {

    var hoursePower: Int
    var color: Color
    var transmission: Transmission
    var enginState: EnginState
    
    
    init(hoursePower: Int, color: Color, transmission: Transmission, enginState: EnginState ) {
        self.hoursePower = hoursePower
        self.color = color
        self.transmission = transmission
        self.enginState = enginState
    }
    func handleEngine (){
        switch self.enginState {
        case .isOff:
            print("Двигатель включен")
            self.enginState = .isOn
        case .isOn:
            print("Двигатель выключен")
            self.enginState = .isOff
        }
    }
}

let ferrari = Car(hoursePower: 500, color: .red, transmission: .mechanical, enginState: .isOff)
let hyundai = Car(hoursePower: 120, color: .blue, transmission: .auto, enginState: .isOff)
let kia = Car(hoursePower: 130, color: .black, transmission: .auto, enginState: .isOff)


ferrari.handleEngine()
print("Мощность двигателя \(ferrari.hoursePower) л.с."  )


enum TrunkState {
    case isLoading, isUnloads
}


class TrunkCar: Car{
    
    var trunkVolume: Int
    var trunkState: TrunkState
    
    init (trunkVolume: Int, trunkState: TrunkState) {
        self.trunkVolume = trunkVolume
        self.trunkState = trunkState
        super.init(hoursePower: 400, color: .black, transmission: .mechanical, enginState: .isOn)
    }
    
    func handleTrunk (){
        switch self.trunkState {
        case .isUnloads:
            print("Багажник разгружен")
            self.trunkState = .isLoading
        case .isLoading:
            print("Багажник загружен")
            self.trunkState = .isUnloads
    }
    
    }
    
    
    override func handleEngine (){
        switch self.enginState {
        case .isOff:
            print("Включили дизельный двигатель")
            self.enginState = .isOn
        case .isOn:
            print("Выключили дизельный двигатель")
            self.enginState = .isOff
    }
    
    }
}
var kamaz = TrunkCar(trunkVolume: 10000, trunkState: .isLoading)

kamaz.handleEngine()
kamaz.handleTrunk()

enum RaceCarType {
    case rally, drag, drift
}

class SportCar: Car {
    
    var type: RaceCarType
    
    
    
    init (type: RaceCarType ){
        self.type = type
        super.init(hoursePower: 300, color: .red, transmission: .mechanical, enginState: .isOn)
    }
     
    func goRace() {
        print("Выезжаем на старт гонки \(self.type)")
    }
    
    override func handleEngine (){
        switch self.enginState {
        case .isOff:
            print("Включили спортивный двигатель")
            self.enginState = .isOn
        case .isOn:
            print("Выключили спортивный двигатель")
            self.enginState = .isOff
        }
}
}

var raceCar = SportCar(type: .drift)
 
raceCar.handleEngine()
raceCar.goRace()
