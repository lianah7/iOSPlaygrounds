//
//  Game.swift
//  Apple Pie
//
//  Created by Liana Hill on 4/10/20.
//  Copyright © 2020 Liana Hill. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
}