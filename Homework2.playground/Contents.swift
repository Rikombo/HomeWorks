import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()

 */

var firstVariable: Float = 3.14
var secondVariable: Float = 42.0
var sum: Double = Double(firstVariable + secondVariable)
print(sum)

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 
 */

var numberOne: Int = 9
var numberTwo: Int = 6
let result: Int = 9 / 6
let remainder: Int = 9 % 6
print("When dividing \(numberOne) by \(numberTwo), the result is \(result), the remainder is \(remainder)")


/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

var quantity = 10
var price = 1000
var totalSum = 0

if quantity >= 10 {
    price = 850
} else if quantity >= 5 {
    price = 900
}

totalSum = quantity * price
print("new: \(quantity) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")

/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

var userInputAge: String = "33a"
if let age = Int(userInputAge) {
    print("The age \(age) can be converted to Int")
} else {
    print("This age cannot be converted")
}


/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */

let formatter = DateFormatter()
formatter.dateFormat = "dd/MM/yyyy"
let birthdate = formatter.date(from: "25/02/1996")!
let now = Date()

let calendar = Calendar.current
let components = calendar.dateComponents([.day, .month, .year], from: birthdate, to: now)

let totalYearsFromBirth = components.year!
let totalMonthsFromBirth = totalYearsFromBirth * 12 + components.month!
let totalDaysFromBirth = calendar.dateComponents([.day], from: birthdate, to: now).day!

print("Total years: \(totalYearsFromBirth), total months: \(totalMonthsFromBirth), total days: \(totalDaysFromBirth) have passed")

/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */

let monthOfBirth = 2
var quarter = ""

switch monthOfBirth {
case 1...3:
    quarter = "first"
case 4...6:
    quarter = "second"
case 7...9:
    quarter = "third"
case 10...12:
    quarter = "fourth"
default:
    print("Invalid month")
}

if !quarter.isEmpty {
    print("I was born in the \(quarter) quarter")
}
