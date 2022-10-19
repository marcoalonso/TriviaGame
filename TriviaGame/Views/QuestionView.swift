//
//  QuestionView.swift
//  TriviaGame
//
//  Created by marco rodriguez on 16/10/22.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    var body: some View {
        VStack (spacing: 50) {
            HStack {
                Text("Trivia Game")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("SecondaryColor"))
                
                Spacer()
                
                Text("#\(triviaManager.index + 1) of \(triviaManager.lenght)")
                    .foregroundColor(Color("SecondaryColor"))
                    .fontWeight(.heavy)
            }
            
            ProgressBar(progress: triviaManager.progress)
            
            VStack (alignment: .leading, spacing: 20) {
                Text(triviaManager.question)
                    .font(.system(size: 25))
                    .bold()
                    .foregroundColor(.black)
                
                ForEach(triviaManager.answerChoices, id: \.id) { answer in
                    AnswerRow(answer: answer)
                        .environmentObject(triviaManager)
                    
                }
                
            }//Vstack
            
            Button {
                //Action
                triviaManager.goToNextQuestion()
            } label: {
                PrimaryButton(text: "Next".uppercased(), background: triviaManager.answerSelected ? Color("AccentColor") : .gray)
            }
            .disabled(!triviaManager.answerSelected)
            
            
            Spacer()
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("LightColor"))
        .navigationBarBackButtonHidden(true)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
            .environmentObject(TriviaManager())
    }
}
