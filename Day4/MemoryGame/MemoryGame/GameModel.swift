//
//  GameModel.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2022/02/10.
//

import Foundation

enum CardState {
    case closed, open, removed
}

struct Card {
    var state: CardState
    let number: Int
}

class GameModel {
    static let rows = 6
    static let cols = 3
    var cards = [Card]()
    
    init() {
        start()
    }
    
    func start() {
        cards = []
        let max = GameModel.rows * GameModel.cols / 2
        for i in 1...max {
            cards.append(Card(state: .open, number: i))
            cards.append(Card(state: .closed, number: i))
       }
    }
    
    func card(row: Int, col: Int) -> Card {
        return cards[row * GameModel.cols + col]
    }
}
