import Foundation

func add(_ a: Double, _ b: Double) -> Double {
    return a + b
}

func subtract(_ a: Double, _ b: Double) -> Double {
    return a - b
}

func multiply(_ a: Double, _ b: Double) -> Double {
    return a * b
}

func divide(_ a: Double, _ b: Double) -> Double? {
    if b == 0 {
        print("Error: Division by zero")
        return nil
    }
    return a / b
}

func main() {
    let num1: Double = 10
    let num2: Double = 5

    let additionResult = add(num1, num2)
    print("Addition result: \(additionResult)")
    
    let subtractionResult = subtract(num1, num2)
    print("Subtraction result: \(subtractionResult)")
    
    let multiplicationResult = multiply(num1, num2)
    print("Multiplication result: \(multiplicationResult)")
    
    if let divisionResult = divide(num1, num2) {
        print("Division result: \(divisionResult)")
    }
}

main()
