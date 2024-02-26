import Foundation

var blackhawksRoster: [Int: (name: String, age: Int, country: String, height: Double, birthday: String)] = [
    19: ("Jonathan Toews", 33, "Canada", 6.2, "April"),
    88: ("Patrick Kane", 33, "USA", 5.11, "November"),
    50: ("Corey Crawford", 37, "Canada", 6.2, "December"),
    27: ("Adam Boqvist", 21, "Sweden", 6.0, "August"),
]

var playerAges = [Int]()
var playerCountries = [String]()
var playerHeights = [Double]()
var playerBirthdays = [String]()

for (_, playerInfo) in blackhawksRoster {
    playerAges.append(playerInfo.age)
    playerCountries.append(playerInfo.country)
    playerHeights.append(playerInfo.height)
    playerBirthdays.append(playerInfo.birthday)
}

let playersSortedByAge = blackhawksRoster.sorted { $0.value.age < $1.value.age }

let playersSortedByCountry = blackhawksRoster.sorted { $0.value.country < $1.value.country }

let averageAge = Double(playerAges.reduce(0, +)) / Double(playerAges.count)

let averageHeight = playerHeights.reduce(0, +) / Double(playerHeights.count)

var birthdayCounts = [String: Int]()
for birthday in playerBirthdays {
    birthdayCounts[birthday, default: 0] += 1
}
let mostCommonBirthdayMonth = birthdayCounts.sorted { $0.value > $1.value }.first?.key ?? "Unknown"

print("Players sorted by age:")
for (_, player) in playersSortedByAge {
    print("\(player.name) - Age: \(player.age)")
}

print("\nPlayers sorted by country:")
for (_, player) in playersSortedByCountry {
    print("\(player.name) - Country: \(player.country)")
}

print("\nAverage age of players: \(averageAge)")
print("Average height of players: \(averageHeight)")

print("\nMonth in which most players' birthdays fall: \(mostCommonBirthdayMonth)")
