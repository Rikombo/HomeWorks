import UIKit

/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */

let myTeam: String = "Boys"

var resultOfGames: [String: [String]] = [
    "Brooklyn Nets": ["99:89", "109:99"],
    "Dallas Mavericks": ["87:93", "104:97"],
    "Washington Wizards": ["117:122", "107:122"]
]

for (team, results) in resultOfGames {
    for result in results {
        print("\(myTeam) against \(team) scored - \(result)")
    }
}

/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */

let cashInWallet: [Int] = [5, 10, 20, 50, 100, 200, 500]

func calculateCash(cash: [Int]) -> Int {
    var sum = 0
    for i in 0..<cash.count {
        sum += cash[i]
    }
    return sum
}

var totalSum: Int = calculateCash(cash: cashInWallet)
print(totalSum)

/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

func isEvenNumber(_ number: Int) -> Bool {
    if number % 2 == 0 {
        return true
    } else {
        return false
    }
}

var evenNumber = isEvenNumber(6)
var oddNumber = isEvenNumber(7)
print(evenNumber, oddNumber)

/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

func createArray(from start: Int, to end: Int) -> [Int] {
    let array = Array(start...end)
    return array
}

var array = createArray(from: 1, to: 100)
print(array)

/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */

for number in array.reversed() {
    if isEvenNumber(number),
       let index = array.firstIndex(of: number) {
        array.remove(at: index)
    }
}

print(array)


