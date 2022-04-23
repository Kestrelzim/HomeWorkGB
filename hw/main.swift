//
//  main.swift
//  hw
//
//  Created by Aleksy on 02.04.2022.
//

import Foundation

enum CarAction {
    case onEngine
    case offEngine
    case windowsUp
    case windowsDown
    case doorOpen
    case doorClose
    case trunkOpen
    case trunkClose
}

// MARK: Parents class
class Car {

    var mark: String
    var year: Int
    var isEngineActive = false {
          willSet {
              if newValue != isEngineActive {
                  print(self.mark + " " + (newValue ? "заведена" : "заглушена"))
              }
        }
      }
    var isWindowsOpened = false {
         willSet {
             if newValue != isWindowsOpened {
                 print(self.mark + " окно " + (newValue ? " открыты" : " закрыты"))
             }
         }
     }
    init(mark: String, year: Int) {
        self.mark = mark
        self.year = year
    }

}



// MARK: Heritage Class Sport Car

final class SportCar: Car {
// Включение режим спорт
    var isModeSport = false {
        willSet {
            if newValue != isModeSport {
                print("\(self.mark) режим Спорт " + (newValue ? "включен" : "выключен"))
            }
        }
    }
// Поднятие крыши автомобиля
    var isRoofUp = false {
        willSet {
            if newValue != isRoofUp {
                print("Крыша" + " " + self.mark + " " + "была" + " " + (newValue ? "поднята" : "убрана"))
            }
        }
    }
}

// MARK: Heritage Class  Heavy Trunk Car

final class HeavyCar: Car {
     // Объём кузова
    var capacityTrunk: Int = 0
     // Кол-во добавляемого чего то
    var addItem: Int = 0
    // подсмотрел для определения загруженности и предела вместимости
    private var loadedCapacity = 0
    
    // Забыл уже что хотел тут сделать кажется загруженность
    var capacity: Int {
        get {
            return self.loadedCapacity
        }
        set {
            if newValue > self.capacityTrunk {
                self.loadedCapacity = self.capacityTrunk
            } else {
                self.loadedCapacity = newValue
            }
        }
    }
    
    // Инициализация с новыми параметрами
    init(mark: String, year: Int, capacityTrunk: Int) {
        self.capacityTrunk = capacityTrunk
        super.init(mark: mark, year: year)
    }
    
    // Метод загрузки, но вдимо не так  он работает как думалось
    func loadTrunk(item: Int) -> Int {
        return capacityTrunk + item
    }
    
    // Открытие закрытие кузова
    var isTrunkOpen = false {
        willSet {
            if newValue != isTrunkOpen {
                print("\(self.mark) кузов " + (newValue ? "октрыт" : "закрыт"))
            }
        }
    }
}


// MARK: Test

var Car1 = Car(mark: "Chevrolet", year: 2000)

Car1.isWindowsOpened.toggle()
Car1.isWindowsOpened.toggle()

Car1.isEngineActive.toggle()
Car1.isEngineActive.toggle()

var Car2 = SportCar(mark: "BMW", year: 2005)

Car2.isWindowsOpened.toggle()
Car2.isWindowsOpened.toggle()

Car1.isEngineActive.toggle()
Car1.isEngineActive.toggle()

Car2.isRoofUp.toggle()
Car2.isRoofUp.toggle()

Car2.isModeSport.toggle()
Car2.isModeSport.toggle()

var Trunk1 = HeavyCar.init(mark: "HOWO", year: 2009, capacityTrunk: 3000)

Trunk1.isTrunkOpen.toggle()
Trunk1.isTrunkOpen.toggle()

Trunk1.loadTrunk(item: 2500)
print(Trunk1.capacity)
Trunk1.isWindowsOpened.toggle()
Trunk1.isWindowsOpened.toggle()

Trunk1.isEngineActive.toggle()
Trunk1.isEngineActive.toggle()
