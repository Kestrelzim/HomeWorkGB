//
//  main.swift
//  hw
//
//  Created by Aleksy on 02.04.2022.
//

import Foundation

print("Hello, World!")

/////1. Написать функцию, которая определяет, четное число или нет.
func prov(number: Int)  {
    if number % 2 == 0 {
        print("Четное")
    } else {
        print("Не четное")
    }
}

prov(number: 35)
prov(number: 22)
prov(number: 74)
prov(number: 2)

///2. Написать функцию, которая определяет, делится ли число без остатка на 3.
func na3(number: Int)  {
    if number % 3 == 0 {
        print("Делится на 3 без остатка")
    } else {
        print("Не делится на 3 без остатка")
    }
}
na3(number: 33)
na3(number: 3)
na3(number: 12)
na3(number: 74)

///3.Создать возрастающий массив из 100 чисел
var integerArray = [Int]()
func creatArr() -> [Int] {
for i in 1...100 {
    integerArray.append(i)
}
    return integerArray
}
print(creatArr())


///4.Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
