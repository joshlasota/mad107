func calculateFibonacci(upTo limit: Int) -> [Int] {
    var fibonacciNumbers = [0, 1] //Beginning of Fibonacci sequence
    var nextNumber = 0

    while nextNumber <= limit {
        let next = fibonacciNumbers[fibonacciNumbers.count - 1] + fibonacciNumbers[fibonacciNumbers.count - 2]
        if next <= limit {
            fibonacciNumbers.append(next)
        }
        nextNumber = next
    }
    
    return fibonacciNumbers
}

func displayFibonacciNumbers() {
    let fibonacciSequence = calculateFibonacci(upTo: 1000)
    for number in fibonacciSequence {
        print(number)
    }
}

displayFibonacciNumbers()
