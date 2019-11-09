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
