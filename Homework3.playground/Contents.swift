import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

let deposit: Float = 1000.00
let interestRate: Float = 0.025
let period: Int = 2
var profit: Float = 0

for _ in 1...period {
    profit = deposit * pow((1 + interestRate), Float(period)) - deposit
    
}

print("Amount of income after \(period) years will be \(profit) EUR. My total deposit will be \(deposit + profit)")




/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
var evenNumbers: [Int] = []

for number in array {
    if number % 2 == 0 {
        evenNumbers.append(number)
    }
}

print("My even numbers are: \(evenNumbers)")

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

var randomNumber = Int.random(in: 1...10)
var counter = 0

for _ in 1...10 {
    randomNumber = Int.random(in: 1...10)
    counter += 1
    if randomNumber == 5 {
        print("Number 5 will be after \(counter) shuffles")
        break
    }
}

var numberToCheck = 5
var shuffleCounts = 0

while numberToCheck != 5 {
    numberToCheck = Int.random(in: 1...10)
    shuffleCounts += 1
}
print("Number 5 will be after \(counter) shuffles")

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

let postHeight = 10
var currentHeight = 0
var numberOfDays = 0

while currentHeight < postHeight {
    currentHeight += 2
    numberOfDays += 1
    
    if currentHeight >= postHeight {
        break
    }
    
    currentHeight -= 1
}

print("Bug will spend \(numberOfDays) days to reach top of the post")

var distance = 0
numberOfDays = 0
var isDay = true

while distance != 10 {
    if isDay {
        distance += 2
        numberOfDays += 1
        isDay = false
    } else {
        distance -= 1
        isDay = true
    }
}

print(numberOfDays)
