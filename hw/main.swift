//
//  main.swift
//  hw
//
//  Created by Aleksy on 02.04.2022.
//

import Foundation

class Person {
    var name: String
    var sureName: String
    
    init(name: String, sureName:String){
        self.name = name
        self.sureName = sureName
    }
}

struct Queue <T> {
    private var elements: [T] = []
    mutating func add (_ element: T) {
        elements.append(element)
    }
    mutating func output (_ element: T) {
        elements.removeFirst()
    }
    
    
}

extension Person: CustomStringConvertible {
    var description: String {
        return "В очереди находятся \(self.name) \(self.sureName)"
    }
}

var listPerson = Queue<Person>()

listPerson.add(Person.init(name: "Alekse", sureName: "Zimnyakov"))
listPerson.add(Person.init(name: "Oksana", sureName: "Zimnyakov"))
listPerson.add(Person.init(name: "Stacy", sureName: "Alcosmoke"))
listPerson.add(Person.init(name: "Tamara", sureName: "Erjanova"))
listPerson.add(Person.init(name: "Who", sureName: "Knows"))

print(listPerson)

let personList = ["Zimnyakov", "Zimnyakova", "Zimnyakovi", "Narziev", "Nasredin", "Erjan", "Egor"]

print(personList.filter{$0.hasPrefix("N")}
)
