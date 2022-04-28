//
//  ScoreBoardView.swift
//  QuizSwiftUI
//
//  Created by ALUNO on 27/04/22.
//

import SwiftUI

struct ScoreBoardView: View {
    @EnvironmentObject var viewModel:ScoreBoardViewModel
    
    var body: some View {
        VStack{
            NavigationLink(destination: ContentView()){
                Text("Restart")
            }
            List{
                ForEach(viewModel.scores.indices, id:\.self){i in
                    ExtractedView(position: i, name: viewModel.scores[i].name, score: viewModel.scores[i].score)
                }
            }
        }
        .navigationBarHidden(true)
        
    }
}

struct ScoreBoardView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreBoardView()
    }
}

struct ExtractedView: View {
    var position:Int = 0
    var name:String = ""
    var score:Int = 0
    var body: some View {
        HStack{
            Text(String(position))
            Spacer()
            Text(name)
            Spacer()
            Text(String(score))
        }
    }
}
