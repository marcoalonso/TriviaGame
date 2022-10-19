//
//  TriviaView.swift
//  TriviaGame
//
//  Created by marco rodriguez on 16/10/22.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    
    var body: some View {
        if triviaManager.reachedEnd {
            VStack(spacing: 20) {
                Text("Trivia Game")
                    .lilacTitle()
                
                Text("Congratulations, you completed the game!")
                
                Text("You scored \(triviaManager.score) of \(triviaManager.lenght)")
                
                Button {
                    //Action
                    Task.init {
                        await triviaManager.fetchTrivia()
                    }
                    
                } label: {
                    Text("Play Again".uppercased())
                        .fontWeight(.heavy)
                        .font(.title)
                        .foregroundColor(Color.orange)
                }
                
            }.foregroundColor(Color("AccentColor"))
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.brown)
        } else {
            QuestionView()
                .environmentObject(triviaManager)
        }
        
        
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView()
            .environmentObject(TriviaManager())
    }
}
