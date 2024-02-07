import SwiftUI

struct ContentView: View {
    let greeting = "Hello,"
    let name = "World"

    @State private var isGreetingDisplayed = true
    
    var body: some View {
        VStack {
            if isGreetingDisplayed {
                Text(greeting)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text(name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
            } else {
                Text("Goodbye, World!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
            Button(action: {
                self.isGreetingDisplayed.toggle()
            }) {
                Text("Toggle Greeting")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}
