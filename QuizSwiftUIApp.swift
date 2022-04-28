//
//  QuizSwiftUIApp.swift
//  QuizSwiftUI
//
//  Created by ALUNO on 27/04/22.
//

import SwiftUI

@main
struct QuizSwiftUIApp: App {
    @StateObject var viewModel = ScoreBoardViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
