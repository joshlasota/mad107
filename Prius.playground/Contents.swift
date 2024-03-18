import Foundation

// Define the available options
let models = ["LE", "XLE", "Limited", "LE AWD", "XLE AWD", "Limited AWD"]
let colors = ["Cutting Edge", "Guardian Gray", "Midnight Black Metallic", "Supersonic Red", "Wind Chill Pearl", "Reservoir Blue"]
let packages = ["Digital Key", "12.3-in. Toyota Audio Multimedia", "Fixed Glass Roof"]
let accessoryPackages = ["All-Weather Floor Liner Package", "Protection Package #3"]
let wheels = ["Alloy Wheel Locks"]
let protectionAccessories = ["Body Side Moldings", "Carpet Mat Package", "Door Edge Guards", "Mudguards", "Paint Protection Film", "Rear Bumper Applique", "MillerCAT Stainless Steel Cat Shield"]
let storageAccessories = ["Cargo Net- Spider", "Cargo Tote", "Dometic CFX3 PC35 Cooler Cover", "Dometic GO Camp Table Storage Bag", "Dometic PATR-20 OLIVE Ice Chests", "Pelican 14QT Personal Cooler", "Pelican 20QT Elite Cooler", "Pelican Dayventure Backpack Cooler", "Pelican Dayventure Sling Cooler", "Yakima Skybox 16 Carbonite"]
let convenienceAccessories = ["Connected Services Trial Offering 3 Additional Years of Drive Connect & 2 Additional Years of Remote Connect", "Connected Services Trial Offering 3 Additional Years of Drive Connect & Remote Connect", "Emergency Kit", "First Aid Kit with PPEd", "Integrated Dashcam w/ Wiring Harness", "Key Gloves", "Quick Charging Cable Package", "Universal Tablet Holder", "Carmate DC4000RA Dashcam 360", "Carmate DC4000RA Dashcam 360 Parking Assist", "Dometic GO Hydration Water Faucet", "Dometic GO Hydration Water Jug 11L", "Dometic HUB 2.0 Inflatable Shelter", "Dometic HUB 2.0 Mesh Panel", "Dometic OBSIDIAN Series 45W Portable Solar Kit", "Dometic PLB40 Portable Lithium Battery", "Kurgo Backseat Barrier", "Kurgo Direct to Seatbelt Swivel Tether", "Kurgo Dog First Aid Kit", "Kurgo Heather Dog Booster Seat", "Kurgo Shed Sweeper - Dog Hair Remover", "Kurgo Tru-Fit Dog Car Harness: Multiple Sizes Available", "Kurgo Wander Hammock (Heather Gray Color)", "RAM® X-Grip Cup Holder Mount for Large Phones", "RAM® X-Grip Seat Wedge Mount for Large Phones"]
let interiorAccessories = ["Dometic GO Compact Camp Table: Bamboo"]
let roofRacks = ["Yakima HighRoad Premium Rooftop Upright Bike Mount", "Yakima OffGrid Cargo Basket, Mounted"]

func getUserInput(prompt: String) -> String {
    print(prompt)
    if let input = readLine() {
        return input
    } else {
        return ""
    }
}

func displayOptions(options: [String]) {
    for (index, option) in options.enumerated() {
        print("\(index + 1). \(option)")
    }
}

func selectOption(options: [String]) -> String {
    displayOptions(options: options)
    let choice = getUserInput(prompt: "Enter your choice:")
    let index = Int(choice) ?? 0
    if index > 0 && index <= options.count {
        return options[index - 1]
    } else {
        print("Invalid choice. Please try again.")
        return selectOption(options: options)
    }
}

func customizePlayground() {
    let selectedModel = selectOption(options: models)
    let selectedColor = selectOption(options: colors)
    let selectedPackages = selectOption(options: packages)
    let selectedAccessoryPackages = selectOption(options: accessoryPackages)
    let selectedWheels = selectOption(options: wheels)
    let selectedProtectionAccessories = selectOption(options: protectionAccessories)
    let selectedStorageAccessories = selectOption(options: storageAccessories)
    let selectedConvenienceAccessories = selectOption(options: convenienceAccessories)
    let selectedInteriorAccessories = selectOption(options: interiorAccessories)
    let selectedRoofRacks = selectOption(options: roofRacks)

    print("\nCustomized Playground Configuration:")
    print("Model: \(selectedModel)")
    print("Color: \(selectedColor)")
    print("Packages: \(selectedPackages)")
    print("Accessory Packages: \(selectedAccessoryPackages)")
    print("Wheels: \(selectedWheels)")
    print("Protection Accessories: \(selectedProtectionAccessories)")
    print("Storage Accessories: \(selectedStorageAccessories)")
    print("Convenience Accessories: \(selectedConvenienceAccessories)")
    print("Interior Accessories: \(selectedInteriorAccessories)")
    print("Roof Racks: \(selectedRoofRacks)")
}

customizePlayground()
