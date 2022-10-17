//
//  QuestionView.swift
//  TriviaGame
//
//  Created by marco rodriguez on 16/10/22.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        VStack (spacing: 50) {
            HStack {
                Text("Trivia Game")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("SecondaryColor"))
                
                Spacer()
                
                Text("#1 of 10")
                    .foregroundColor(Color("SecondaryColor"))
                    .fontWeight(.heavy)
            }
            
            ProgressBar(progress: 40)
            
            VStack (alignment: .leading, spacing: 20) {
                Text("Brazil is the country where there are more soccer players?")
                    .font(.system(size: 25))
                    .bold()
                    .foregroundColor(.black)
                
                AnswerRow(answer: Answer(text: "false", isCorrect:  true))
                AnswerRow(answer: Answer(text: "true", isCorrect:  false))
                
            }//Vstack
            
            PrimaryButton(text: "Next".uppercased())
            
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
    }
}
