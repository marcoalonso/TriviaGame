//
//  AnswerRow.swift
//  TriviaGame
//
//  Created by marco rodriguez on 16/10/22.
//

import SwiftUI

struct AnswerRow: View {
    
    @State private var isSelected = false
    
    var green = Color(hue: 0.437, saturation: 0.711, brightness: 0.711)
    var red = Color(red: 0.71, green: 0.094, blue: 0.1)
    
    var answer: Answer
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "circle.fill")
                .font(.caption)
            
            Text(answer.text)
                .bold()
            
            if isSelected {
                Spacer()
                
                Image(systemName: answer.isCorrect ? "checkmark.circle.fill" : "x.circle.fill")
                    .foregroundColor(answer.isCorrect ? green : red)
            }
            
        }.padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundColor(isSelected ? Color("AccentColor") : .gray)
            .background(.white)
            .cornerRadius(10)
            .shadow(color: isSelected ? (answer.isCorrect ? green : red) : .gray, radius: 5, x: 0.5, y: 0.5)
            .onTapGesture {
                isSelected = true
            }
    }
}

struct AnswerRow_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRow(answer: Answer(text: "Single", isCorrect: false))
    }
}
