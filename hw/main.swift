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
    var capacity = 0.00
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
    init (brand: String, year: Int, capacity: Double) {
        self.brand = brand
        self.year = year
        self.capacityTrunk = capacity
        
        print("\(self.brand) год \(self.year) вместимость багажника \(self.capacityTrunk)")
    }
}

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



