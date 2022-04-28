//
//  QuizView.swift
//  QuizSwiftUI
//
//  Created by ALUNO on 27/04/22.
//

import SwiftUI

struct QuizView: View {
    @EnvironmentObject var viewModel:ScoreBoardViewModel
    
    var question = QuestionModel.getQuestions()
    @State var currentQuestion = 0
    @State var goToScoreBoard = false
    var body: some View {
        VStack{
            Image(question[currentQuestion].imageNamed)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(question[currentQuestion].questionText)
            Spacer()
            ForEach(question[currentQuestion].option, id:\.self){
                opt in
                Button(opt){
                    let rightOpt = question[currentQuestion].option[question[currentQuestion].rightOption]
                    if opt == rightOpt{
                        viewModel.score += 10
                    }
                    if currentQuestion >= question.count - 1 {
                        viewModel.scores.append(ScoreEntry(name: viewModel.name, score: viewModel.score))
                        viewModel.name = ""
                        goToScoreBoard = true
                    }else{
                        currentQuestion += 1
                    }
                    
                }
                Spacer()
            }
            NavigationLink(destination: ScoreBoardView(), isActive: $goToScoreBoard){
                
            }
        }
        .navigationBarHidden(true)
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
