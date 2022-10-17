//
//  ProgressBar.swift
//  TriviaGame
//
//  Created by marco rodriguez on 16/10/22.
//

import SwiftUI

struct ProgressBar: View {
    
    var progress: CGFloat
    
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .frame(maxWidth: 350, maxHeight: 5)
                .foregroundColor(Color.brown)
                .cornerRadius(10)
            
            Rectangle()
                .frame(width: progress, height: 5)
                .foregroundColor(Color("SecondaryColor"))
                .cornerRadius(10)
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progress: 50)
    }
}
