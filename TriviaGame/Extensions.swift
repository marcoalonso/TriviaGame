//
//  Extensions.swift
//  TriviaGame
//
//  Created by marco rodriguez on 16/10/22.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("LightColor"))
    }
}
