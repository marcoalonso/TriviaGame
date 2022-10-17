//
//  ContentView.swift
//  TriviaGame
//
//  Created by marco rodriguez on 16/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 40) {
            VStack(spacing: 20) {
                Image("quizz")
                    .resizable()
                    .frame(maxHeight: 350)
                    
                Text("Trivia Game".uppercased())
                    .lilacTitle()
                
                Text("Are you ready to test out your trivia skills ?")
                    .foregroundColor(Color("LightColor"))
                    .font(.title3)
                
            }
            
            PrimaryButton(text: "Lets Go!")
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
        .background(Color("SecondaryColor"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
