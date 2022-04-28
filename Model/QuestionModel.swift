//
//  QuestionModel.swift
//  QuizSwiftUI
//
//  Created by ALUNO on 27/04/22.
//

import Foundation
class Question{
    internal init(questionText: String, imageNamed: String, option: [String], rightOption: Int) {
        self.questionText = questionText
        self.imageNamed = imageNamed
        self.option = option
        self.rightOption = rightOption
    }
    
    let questionText:String
    let imageNamed:String
    let option:[String]
    let rightOption:Int
    
}
class QuestionModel{
    class func getQuestions() -> [Question]{
        let questions = [
        Question(questionText: "Quem está na imagem?", imageNamed: "bob", option: ["Bob Esponja","Beto Esponja","Roberto Esponja","Enzo Esponja"], rightOption: 0),
        Question(questionText: "Quem está na imagem?", imageNamed: "rick", option: ["rock","rack","rique","rick"], rightOption: 3)
        ]
        return questions.shuffled()
    }
}
