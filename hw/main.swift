//
//  main.swift
//  hw
//
//  Created by Aleksy on 02.04.2022.
//

import Foundation


// MARK:  - Изменяемые показатели
enum engineStatus {
    case start, stop
}

enum windowsState {
    case open, closed
}

enum loadUnload {
    case load, unload
}

enum trunkState {
    case full, empty
}



//MARK:  -  Описание спортивной машины
struct SportCar {
    var brand: String
    var year: Int
    var capacityTrunk: Double
    var capacityFree = 0.00
    var engineStatus: engineStatus {
        willSet {
            if newValue == .start {
                print("\(brand) engine is on")
            } else {print("\(brand) engine is off")}
        }
    }
    var windows: windowsState {
        willSet {
            if newValue == .open {
                print("Windows is open")
            } else {
            print("Windows is close")
        }
    }
}
    var trunk: trunkState {
        willSet {
            if newValue == .full {
                print("Trunk full")
            } else {
            print("Trunk empty")
        }
    }
  }
    mutating func loadItem (_ item: Double ) -> String {
        if item > 0 {
            capacityFree += item
        }
        return "Load in trunk \(item)"
        
    }
    
    mutating func unLoad (_ item: Double) -> String {
        if item > 0 {
            capacityFree -= item
        }
        return "Unload from trunk \(item)"
    }
    
    
}
var bmw = SportCar.init(brand: "BMW", year: 2000, capacityTrunk: 300, capacityFree: 0, engineStatus: .stop, windows: .closed, trunk: .empty)



// MARK:  - Описание грузовой машины
struct TrunkCar {
    let brand: String
    let year: Int
    let capacityTrunk : Int
    
    /// Состояние двигателя
    var engineStatus : engineStatus {
        willSet {
            if newValue == .start {
                print("\(brand) engine is on")
            } else {print("\(brand) engine is off")}
        }
    }
    /// Состояние окон
    var windows: windowsState {
        willSet {
            if newValue == .open {
                print("Windows is open")
            } else {
            print("Windows is close")
        }
    }
}
    /// Состояние багажника
    var trunk: trunkState {
        willSet {
            if newValue == .full {
                print("Trunk full")
            } else {
            print("Trunk empty")
        }
    }
 }
}





