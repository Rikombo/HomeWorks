import UIKit

/*
 Exercise 1.1
 
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 
 Than use switch case to calculate and return Int result

    var result = numberOne
       
       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 
    return result
 
 */

enum CalculationType: String {
    case addition = "addition"
    case subtraction = "subtraction"
    case multiplication = "multiplication"
}

func calculateResult(firstNumber: Int, secondNumber: Int, calculationType: CalculationType) -> Int {
    var result = 0
    switch calculationType {
        case .addition:
            result = firstNumber + secondNumber
        case .subtraction:
            result = firstNumber - secondNumber
        case .multiplication:
            result = firstNumber * secondNumber
    }
    print("Result: \(calculationType.rawValue) \(firstNumber) and \(secondNumber) = \(result)")
    return result
}



/*
Exercise 1.2
Declare two numbers.
Call func 4 times for all calculateResult
*/

let result1 = calculateResult(firstNumber: 8, secondNumber: 3, calculationType: .addition)
let result2 = calculateResult(firstNumber: 8, secondNumber: 3, calculationType: .subtraction)
let result3 = calculateResult(firstNumber: 8, secondNumber: 3, calculationType: .multiplication)
let result4 = calculateResult(firstNumber: 5, secondNumber: 4, calculationType: .addition)



/*
Exercise 2

Create struct Car with elements
    name: String
    productionYear: Int
    horsPower: Int

 Create func getSpecs() print it with elements provided above
 */

struct Car {
    var name: String
    var productionYear: Int
    var horsePower: Int
}

func getSpecs(car: Car) {
    print("Name: \(car.name)")
    print("Production Year: \(car.productionYear)")
    print("Horsepower: \(car.horsePower)")
}

let myCar = Car(name: "Audi", productionYear: 2023, horsePower: 222)
getSpecs(car: myCar)
