import Foundation

struct Item {
    let name: String
    let category: String
    let quantity: Int
}

let items = [
    Item(name: "Laptop", category: "Electronics", quantity: 1),
    Item(name: "Guitar", category: "Instruments", quantity: 11),
    Item(name: "Video Games", category: "Gaming", quantity: 2),
    Item(name: "Turntable", category: "Music", quantity: 1)
]

var itemsByCategory = [String: [Item]]()

for item in items {
    if var categoryItems = itemsByCategory[item.category] {
        categoryItems.append(item)
        itemsByCategory[item.category] = categoryItems
    } else {
        itemsByCategory[item.category] = [item]
    }
}

for (category, categoryItems) in itemsByCategory {
    print("Category: \(category)")
    for item in categoryItems {
        print("- \(item.name): \(item.quantity)")
    }
    print()
}

let desiredCategory = "Electronics"
if let electronicsItems = itemsByCategory[desiredCategory] {
    print("Items in \(desiredCategory):")
    for item in electronicsItems {
        print("- \(item.name): \(item.quantity)")
    }
} else {
    print("No items found in \(desiredCategory)")
}
