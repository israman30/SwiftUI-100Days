//
//  ViewModel.swift
//  Logistics-Intro
//
//  Created by Israel Manzo on 1/19/21.
//

import Foundation
import SwiftUI

class ViewModel {
    private(set) var model: MemoryGame = ViewModel.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["😎", "😵", "☠️"]
        return MemoryGame(numberOfPaisOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the Model
var cards: [MemoryGame<String>.Card] {
    return model.cards
    }
    // MARK: - Intent
func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
