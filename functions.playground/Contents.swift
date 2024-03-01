func calculateTotalPrice(for items: [Double], using closure: (Double) -> Double) -> Double {
    var totalPrice = 0.0
    for item in items {
        totalPrice += closure(item)
    }
    return totalPrice
}

let calculatePriceWithTax: (Double) -> Double = { price in
    let taxRate = 0.1 // 10% tax rate
    return price + (price * taxRate)
}

let shoppingList = [10.0, 20.0, 30.0, 40.0]

let totalPrice = calculateTotalPrice(for: shoppingList, using: calculatePriceWithTax)

print("Total price including tax: $\(totalPrice)")
