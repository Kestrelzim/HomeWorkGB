//
//  main.swift
//  hw
//
//  Created by Aleksy on 02.04.2022.
//

import Foundation

print("Hello, World!")

///Квадратное уравнение не решил
let a = 1
let b = 4
let c = 2


///Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника
let CatetA : Float = 13.00 // катет 1
let CatetB : Float = 27.00 // катет 2
let Chyp = sqrtf(Float(Int(powf(Float(CatetA), 2)+powf(Float(CatetB), 2)))) // гипотенуза ?
let STriangle = (CatetA * CatetB)/2 // площадь по катетам
let PeremetTriangle = CatetA + CatetB + Chyp // периметр по трём

print("Площадь треугольника")  // не понял как вписать в принт текст и вывод, сделал в итоге громоздко
print(STriangle);
print("Гепотенуза");
print(Chyp);
print("Периметр треугольника");
print(PeremetTriangle);

/// Проценты по вклад

var value = 100 //вклад
let procent = 25 //процент
let year = 5 //срок
let procentPlus = (value * procent) / 100 // cумма за один год

for value in 1...year { //тут попытка как то прогнать сколько будет процентов за 5 лет и сложить с первоначальным вкладом
print("\(value)  \(procentPlus * year)")
}
print(value)

