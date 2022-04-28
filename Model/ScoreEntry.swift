//
//  ScoreEntry.swift
//  QuizSwiftUI
//
//  Created by ALUNO on 27/04/22.
//

import Foundation
class ScoreEntry{
    internal init(name: String, score: Int) {
        self.name = name
        self.score = score
    }
    let name:String
    let score:Int
}
