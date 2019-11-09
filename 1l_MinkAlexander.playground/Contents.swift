import UIKit

//ex1
print("Задание 1")
var x1: Double = 0
var x2: Double = 0
var func1: Double = 0

let a: Double = 4
let b: Double = 9
let c: Double = 5

func1 = b * b - 4 * a * c

if func1 > 0 {
    x1 = (-b + sqrt(func1)) / (2 * a)
    x2 = (-b - sqrt(func1)) / (2 * a)
    print("X1 = \(x1); X2 = \(x2)")
} else if func1 == 0 {
    x1 = (-b + sqrt(func1)) / (2 * a)
    print("X1 = X2 = \(x1)")
}



//ex2
print("Задание 2")
var aT: Double = 3
var bT: Double = 4

var cT: Double = sqrt(pow(aT,2)+pow(bT,2))
print("Гипотенуза равна \(c)")

var P = aT+bT+cT
print("Периметр равен \(P)")

var S = (aT*bT)/2
print("Площадь равна \(S)")




//ex3
print("Задание 3")

var startDeposit: Double = 130000
var uDeposit: Double = startDeposit
var yPercent: Double = 6.5 / 100
var yCount = 5


//var i = 0
for i in 1...yCount {
    uDeposit = uDeposit + (uDeposit * yPercent)
    print("В \(i) год сумма вклада составит \(NSString(format: "%.2f", uDeposit))")
}


