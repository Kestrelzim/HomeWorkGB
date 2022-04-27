//
//  main.swift
//  hw
//
//  Created by Aleksy on 02.04.2022.
//

import Foundation
import SwiftUI


// MARK: Enum
enum carAction {
    
    case openWindows
    case closeWindows
    case startEngine
    case stopEngine
    case turnOnAudio
    case turnOffAudio
    case openTrunk
    case closeTrunk
    
}

// MARK: Car Protocol
protocol CarBaseProtocol {
    // Брэнд
    var brand: String {get set}
    // Год
    var year: String {get set}
    // Цвет
    var color: Color {get set}
    
    }

// MARK: Sport Car
final class sportCar: CarBaseProtocol {
    // Брэнд
    var brand: String
    // Год
    var year: String
    // Цвет
    var color: Color
    // Объёем двигателя
    var engineDisplacement: Double
    // Время разгона
    var accelerationTime : Double
    // Вес машины
    var weightCar: Double
    
    init(brand: String, year: String, color: Color, engineDisplacement: Double, accelerationTime: Double, weightCar: Double) {
        self.brand = brand
        self.year = year
        self.color = color
        self.engineDisplacement = engineDisplacement
        self.accelerationTime = accelerationTime
        self.weightCar = weightCar
    }
}


// MARK: Trunk Car
final class trunkCar: CarBaseProtocol {
    // Брэнд
    var brand: String
    // Год
    var year: String
    // Цвет
    var color: Color
    // Объём кузова
    var capacityTrunk: Double
    // Мощность двигателя в Horse Power )
    var hP: Double
    
    init(brand: String, year: String, color: Color, capacityTrunk: Double, hP: Double) {
        self.brand = brand
        self.year = year
        self.color = color
        self.capacityTrunk = capacityTrunk
        self.hP = hP
    }
    
}

// MARK: Extension

extension CarBaseProtocol {
    
    var openWindows: String {
        return "Окна \(brand) открыты"
        }
    var closeWindows: String {
        return "Окна \(brand) закрыты"
        }
    var startEngine: String {
        return "Двигатель запущен"
    }
    var stopEngine: String {
        return "Двигатель заглушен"
    }
    var openTrunk: String {
        return "Багажник открыт"
    }
    var closeTrunk: String {
        return "Багажник закрыт"
    }
    
    }

extension sportCar: CustomStringConvertible {
    var description: String {
        return "\(self.brand) имеет двигатель объёмом \(engineDisplacement), цвет \(color), разгон \(accelerationTime), вес \(weightCar)"
    }
}


extension trunkCar: CustomStringConvertible {
    var description: String {
        return "\(self.brand) выпущен \(year), цвет \(color), объём кузова \(capacityTrunk), мощность двигателя \(hP)"
    }
}



var carOne = sportCar.init(brand: "BMW", year: "2005", color: .green, engineDisplacement: 2.0, accelerationTime: 9.3, weightCar: 1200)

print(carOne.description)

var trunkCarOne = trunkCar.init(brand: "HOWO", year: "2009", color: .white, capacityTrunk: 35000, hP: 235)

print(trunkCarOne.description)
