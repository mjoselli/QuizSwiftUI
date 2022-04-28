//
//  ContentView.swift
//  QuizSwiftUI
//
//  Created by ALUNO on 27/04/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel:ScoreBoardViewModel
    
    @State var goToQuiz = false
    var body: some View {
        NavigationView{
            VStack {
                Text("Quiz")
                    .font(.title)
                    
                Spacer()
                HStack {
                    Text("Digite seu nome:")
                    TextField("nome", text: $viewModel.name)
                }
                Spacer()
                Button("Começar Quiz"){
                   goToQuiz = true
                }
                Spacer()
                NavigationLink(destination: QuizView(),isActive: $goToQuiz){
            
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
