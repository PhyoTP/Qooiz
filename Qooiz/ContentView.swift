//
//  ContentView.swift
//  Qooiz
//
//  Created by T Krobot on 27/5/23.
//

import SwiftUI
struct ContentView: View {
    @State private var question = ""
    @State private var showAlert1 = true
    @State private var question1 = Question(questionNum: 1, question: "When did the first MRT stations launch?", answer1: "2022", answer2: "1983", answer3: "1965", answer4: "1987", correctAnswer: 4)
    @State private var question2 = Question(questionNum: 2, question: "What was the first fully underground MRT line?", answer1: "North South Line", answer2: "Downtown Line", answer3: "North East Line", answer4: "Circle Line", correctAnswer: 3)
    @State private var question3 = Question(questionNum: 3, question: "What was the first infill station?", answer1: "Dover", answer2: "Hume", answer3: "Canberra", answer4: "Tagore", correctAnswer: 1)
    @State private var correctAnswer = 0
    @State private var option1 = ""
    @State private var option2 = ""
    @State private var option3 = ""
    @State private var option4 = ""
    @State private var correctAmount = 0
    @State private var answerCorrect = false
    @State private var showAlert2 = false
    @State private var currentQuestion = 1
    @State private var finishQuiz = false
    var body: some View {
        VStack{
            Text("Current Question: \(currentQuestion)")
            Text(question)
                .alert(isPresented: $showAlert1){
                    Alert(title: Text("MRT knowledge quiz"), message: Text("How much do you know about the MRT?"), primaryButton: .default(Text("Start quiz"), action: {
                        question = question1.question
                        option1 = question1.answer1
                        option2 = question1.answer2
                        option3 = question1.answer3
                        option4 = question1.answer4
                        correctAnswer = question1.correctAnswer
                    }), secondaryButton: .destructive(Text("no press"), action: {
                        
                    })
                    )
                }
            HStack{
                VStack{
                    Button{
                        if correctAnswer == 1{
                            currentQuestion += 1
                            correctAmount += 1
                            answerCorrect = true
                            showAlert2 = true
                            
                            
                        }else{
                            answerCorrect = false
                            showAlert2 = true
                            currentQuestion += 1
                        }
                    }label: {
                        Text(option1)
                    }
                    .padding()
                    Button{
                        if correctAnswer == 2{
                            currentQuestion += 1
                            correctAmount += 1
                            answerCorrect = true
                            showAlert2 = true
                            
                            
                        }else{
                            answerCorrect = false
                            showAlert2 = true
                            currentQuestion += 1
                        }
                    }label: {
                        Text(option2)
                    }
                    .padding()
                }
                VStack{
                    Button{
                        if correctAnswer == 3{
                            currentQuestion += 1
                            correctAmount += 1
                            answerCorrect = true
                            showAlert2 = true
                            
                            
                        }else{
                            answerCorrect = false
                            showAlert2 = true
                            currentQuestion += 1
                        }
                    }label: {
                        Text(option3)
                    }
                    .padding()
                    Button{
                        if correctAnswer == 4{
                            currentQuestion += 1
                            correctAmount += 1
                            answerCorrect = true
                            showAlert2 = true
                            
                            
                        }else{
                            answerCorrect = false
                            showAlert2 = true
                            currentQuestion += 1
                        }
                    }label: {
                        Text(option4)
                    }
                    .padding()
                }
            }
            .alert(answerCorrect ? "Faxx bro" : "Stop the cap", isPresented: $showAlert2) {
                Button(answerCorrect ? "Less go" : "bruh 💀"){
                    if currentQuestion == 2{
                        question = question2.question
                        option1 = question2.answer1
                        option2 = question2.answer2
                        option3 = question2.answer3
                        option4 = question2.answer4
                        correctAnswer = question2.correctAnswer
                    }
                    if currentQuestion == 3{
                        question = question3.question
                        option1 = question3.answer1
                        option2 = question3.answer2
                        option3 = question3.answer3
                        option4 = question3.answer4
                        correctAnswer = question3.correctAnswer
                    }
                    if currentQuestion == 4{
                        finishQuiz = true
                    }
                }
            }
            .sheet("You got \(correctAmount)")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
