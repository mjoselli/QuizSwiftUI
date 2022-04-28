//
//  ScoreBoardViewModel.swift
//  QuizSwiftUI
//
//  Created by ALUNO on 27/04/22.
//

import Foundation
class ScoreBoardViewModel:ObservableObject{
    var name:String = ""
    var score:Int = 0
    var scores = [ScoreEntry]()
}
