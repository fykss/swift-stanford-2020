//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Vladyslav Lietun on 25.11.2020.
//

import Foundation

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    private static func createMemoryGame() -> MemoryGame<String> {
        let emoji = ["👻", "🎃", "🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emoji.count) { pairIndex in
            return emoji[pairIndex]
        }
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
    func resetGame() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
