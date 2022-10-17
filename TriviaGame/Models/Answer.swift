//
//  Answer.swift
//  TriviaGame
//
//  Created by marco rodriguez on 16/10/22.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
