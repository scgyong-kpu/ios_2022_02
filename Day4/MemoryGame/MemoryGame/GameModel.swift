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

class GameModel: ObservableObject {
    static let rows = 6
    static let cols = 4
    @Published var cards = [Card]()
    @Published var flips = 0
    var openCardIndex: Int?

    init() {
        start()
    }
    
    func start() {
        cards = []
        let max = GameModel.rows * GameModel.cols / 2
        for i in 1...max {
            cards.append(Card(state: .closed, number: i))
            cards.append(Card(state: .closed, number: i))
        }
        flips = 0
        openCardIndex = nil
    }
    
    func card(row: Int, col: Int) -> Card {
        return cards[row * GameModel.cols + col]
    }
    
    func toggle(row: Int, col: Int) {
        let index = row * GameModel.cols + col
        if index == openCardIndex {
            return
        }
        if let oci = openCardIndex {
            if cards[index].number == cards[oci].number {
                cards[index].state = .removed
                cards[oci].state = .removed
                openCardIndex = nil
                return
            } else {
                cards[oci].state = .closed
            }
        }
        switch cards[index].state {
        case .closed:
            cards[index].state = .open
            openCardIndex = index
            flips += 1
        case .open:
            cards[index].state = .closed
        case .removed:
            break
        }
    }
}
