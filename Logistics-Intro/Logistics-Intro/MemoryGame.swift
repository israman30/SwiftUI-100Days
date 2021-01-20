//
//  MemoryGame.swift
//  Logistics-Intro
//
//  Created by Israel Manzo on 1/19/21.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: [Card]
    
    struct Card: Identifiable {
        var id = UUID()
        var isFaceUp = true
        var isMatched = false
        var content: CardContent
    }
    
    init(numberOfPaisOfCards: Int, cardContentFactory: (Int)-> CardContent) {
        cards = [Card]()
        
        for pairIndex in 0..<numberOfPaisOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content ))
            cards.append(Card(content: content ))
        }
    }
    
    func choose(card: Card) {
        print("Chosen card: ",card)
    }
}
