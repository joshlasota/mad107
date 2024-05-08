import Foundation

struct Question {
    let text: String
    let options: [String]
    let correctAnswer: String

    func isCorrect(_ answer: String) -> Bool {
        return answer == correctAnswer
    }
}

let beatlesQuestions: [Question] = [
    Question(text: "Who was the lead guitarist of the Beatles?", options: ["John Lennon", "George Harrison", "Paul McCartney"], correctAnswer: "George Harrison"),
    Question(text: "Which Beatles album is often considered one of the greatest of all time?", options: ["Rubber Soul", "Magical Mystery Tour", "Let It Be"], correctAnswer: "Rubber Soul"),
    Question(text: "Who was known as the 'quiet Beatle'?", options: ["John Lennon", "George Harrison", "Ringo Starr"], correctAnswer: "George Harrison"),
    Question(text: "Which Beatles song features a sitar?", options: ["Hey Jude", "Lucy in the Sky with Diamonds", "Norwegian Wood"], correctAnswer: "Norwegian Wood"),
    Question(text: "Which Beatles album features a cover with the band members walking across a zebra crossing?", options: ["Sgt. Pepper's Lonely Hearts Club Band", "Abbey Road", "Revolver"], correctAnswer: "Abbey Road"),
    Question(text: "Who wrote the Beatles song 'While My Guitar Gently Weeps'?", options: ["John Lennon", "Paul McCartney", "George Harrison"], correctAnswer: "George Harrison"),
    Question(text: "Which Beatles album features the song 'A Day in the Life'?", options: ["The Beatles (White Album)", "Revolver", "Sgt. Pepper's Lonely Hearts Club Band"], correctAnswer: "Sgt. Pepper's Lonely Hearts Club Band"),
    Question(text: "Which Beatles album marked the beginning of their psychedelic era?", options: ["Rubber Soul", "Revolver", "Help!"], correctAnswer: "Revolver"),
    Question(text: "What was the name of the Beatles' manager?", options: ["Brian Epstein", "George Martin", "Peter Best"], correctAnswer: "Brian Epstein"),
    Question(text: "Which Beatles song features a sitar played by George Harrison?", options: ["Strawberry Fields Forever", "Ticket to Ride", "Revolution"], correctAnswer: "Strawberry Fields Forever"),
    Question(text: "Who was the drummer of the Beatles?", options: ["Ringo Starr", "Pete Best", "Stuart Sutcliffe"], correctAnswer: "Ringo Starr"),
    Question(text: "Which Beatles album includes the song 'Let It Be'?", options: ["Magical Mystery Tour", "Abbey Road", "Let It Be"], correctAnswer: "Let It Be"),
    Question(text: "What was the original name of the Beatles before they became 'The Beatles'?", options: ["The Quarrymen", "The Silver Beatles", "The Cavern Clubbers"], correctAnswer: "The Quarrymen"),
    Question(text: "Who was the youngest member of the Beatles?", options: ["George Harrison", "Paul McCartney", "Ringo Starr"], correctAnswer: "George Harrison"),
    Question(text: "Which Beatles album features the song 'Hey Jude'?", options: ["Abbey Road", "The Beatles (White Album)", "Revolver"], correctAnswer: "The Beatles (White Album)"),
    Question(text: "What was the first Beatles song to feature lead vocals by George Harrison?", options: ["Taxman", "Something", "Here Comes the Sun"], correctAnswer: "Taxman"),
    Question(text: "Who was the last member to join the Beatles?", options: ["John Lennon", "Paul McCartney", "Ringo Starr"], correctAnswer: "Ringo Starr"),
    Question(text: "Which Beatles album features the song 'Help!'?", options: ["Help!", "Rubber Soul", "A Hard Day's Night"], correctAnswer: "Help!"),
    Question(text: "Who famously declared that the Beatles were 'bigger than Jesus'?", options: ["John Lennon", "Paul McCartney", "George Harrison"], correctAnswer: "John Lennon"),
    Question(text: "What was the Beatles' final studio album released before their breakup?", options: ["Let It Be", "Abbey Road", "The Beatles (White Album)"], correctAnswer: "Let It Be"),
    Question(text: "Which Beatles song was banned in some countries due to its controversial lyrics?", options: ["Helter Skelter", "Revolution 9", "Lucy in the Sky with Diamonds"], correctAnswer: "Lucy in the Sky with Diamonds"),
    Question(text: "What was the Beatles' first single?", options: ["Love Me Do", "Please Please Me", "From Me to You"], correctAnswer: "Love Me Do"),
    Question(text: "Which Beatles album features the song 'Eleanor Rigby'?", options: ["Revolver", "Sgt. Pepper's Lonely Hearts Club Band", "Rubber Soul"], correctAnswer: "Revolver"),
    Question(text: "What was the Beatles' final live performance together?", options: ["The Rooftop Concert", "Sgt. Pepper's Lonely Hearts Club Band premiere", "Candlestick Park concert"], correctAnswer: "The Rooftop Concert"),
    Question(text: "Who was the primary songwriter of the Beatles?", options: ["John Lennon", "Paul McCartney", "George Harrison"], correctAnswer: "Paul McCartney"),
]

var score = 0

func presentQuestion(_ question: Question) {
    print(question.text)
    for (index, option) in question.options.enumerated() {
        print("\(index + 1). \(option)")
    }
    print("Enter your answer (1, 2, or 3):")
    
    if let input = readLine(), let choice = Int(input), (1...question.options.count).contains(choice) {
        let selectedAnswer = question.options[choice - 1]
        if question.isCorrect(selectedAnswer) {
            score += 1
            print("Correct!")
        } else {
            print("Incorrect. The correct answer is: \(question.correctAnswer)")
        }
    } else {
        print("Invalid input.")
    }
}

func playQuiz() {
    score = 0
    for question in beatlesQuestions {
        presentQuestion(question)
    }
    print("Quiz ended. Your final score is \(score) out of \(beatlesQuestions.count).")
}

playQuiz()
