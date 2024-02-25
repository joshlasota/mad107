import Foundation

func printClock() {
    let date = Date()
    let calendar = Calendar.current
    let components = calendar.dateComponents([.hour, .minute, .second], from: date)
    
    let hour = components.hour ?? 0
    let minute = components.minute ?? 0
    let second = components.second ?? 0
    
    print(String(format: "%02d:%02d:%02d", hour, minute, second))
}

func startClock() {
    printClock()
    Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
        printClock()
    }
    RunLoop.current.run()
}

startClock()
