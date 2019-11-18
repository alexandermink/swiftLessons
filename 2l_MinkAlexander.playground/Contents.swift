import UIKit

//ex 1
func checkEvenNumber(_ number: Int) -> Bool{
    if(number % 2 == 0){
        return true
    } else {
        return false
    }
}

//ex 2
func checkThreeDivNumber(_ number: Int) -> Bool{
    if(number % 3 == 0){
        return true
    } else {
        return false
    }
}

//ex 3
var hundredArray: [Int] = []

for i in 1...100{
    hundredArray.append(i)
}

//ex 4
for (_,value) in hundredArray.enumerated(){
    if(checkEvenNumber(value) || !checkThreeDivNumber(value)){
        hundredArray.remove(at: hundredArray.firstIndex(of: value)!)
    }
}

print(hundredArray)

//ex 5
func newFibonacciNumber(_ firstNumber: Int64, _ secondNumber: Int64) -> Int64{
    return firstNumber + secondNumber
}

var fibonacciArray: [Int64] = []
fibonacciArray.append(0)
fibonacciArray.append(1)

//Если использовать больше 90 шагов, то крашится playground
for i in 1...90 {
    let tempNumber = newFibonacciNumber(fibonacciArray[i-1], fibonacciArray[i])
    fibonacciArray.append(tempNumber)
}

print(fibonacciArray)


//ex 6
var array: [Int] = []
array.append(2)
array.append(3)

func checkNumbers(_ number: Int, _ value: Int) -> Bool{
    if(number%value == 0){
        return true
    } else {
        return false
    }
}

var tempCount: Int = 4
while array.count != 100 {
    var tempNumber: Int = 0
    for (_,value) in array.enumerated(){
        if(checkNumbers(tempCount, value) == true){
            tempNumber = 0
            break
        } else {
            tempNumber = tempCount
        }
    }
    if(tempNumber != 0){
        array.append(tempNumber)
    }
    tempCount += 1
}

print(array)
print(array.count)
