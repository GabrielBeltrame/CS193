//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Gabriel Beltrame Silva on 29/09/20.
//

import SwiftUI

class EmojiMemoryGame {
    // var Game, o nome da var deve ser mais intuitivo
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🎃", "🕷", "💀", "🧙🏻‍♀️"]
        
        return MemoryGame<String>(numberOfPairsOfCards: Int.random(in: 2...5)) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
