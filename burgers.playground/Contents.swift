import Foundation

// Enumeration for burger types
enum BurgerType: String {
    case classic = "Classic Burger"
    case cheese = "Cheeseburger"
    case veggie = "Veggie Burger"
}

// Structure representing a burger
struct Burger {
    let type: BurgerType
    let price: Double
}

// Function to display the menu
func displayMenu() {
    print("Welcome to Bill's Burgers!")
    print("MENU:")
    for burgerType in BurgerType.allCases {
        print("\(burgerType.rawValue): $\(getBurgerPrice(burgerType: burgerType) ?? 0.00)")
    }
}

// Function to get the price of a burger
func getBurgerPrice(burgerType: BurgerType) -> Double? {
    switch burgerType {
    case .classic:
        return 9.99
    case .cheese:
        return 10.99
    case .veggie:
        return 8.99
    }
}

// Function to order a burger
func orderBurger(burgerType: BurgerType) -> Burger? {
    guard let price = getBurgerPrice(burgerType: burgerType) else {
        print("Sorry, \(burgerType.rawValue) is not available.")
        return nil
    }
    print("You have ordered \(burgerType.rawValue).")
    print("Please pay $\(price).")
    return Burger(type: burgerType, price: price)
}

// Show the menu
displayMenu()

if let orderedBurger = orderBurger(burgerType: .cheese) {
    print("Enjoy your \(orderedBurger.type.rawValue)!")
}
