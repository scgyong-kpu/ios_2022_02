import Foundation

enum Rank {
    case Ace, Jack, King, Queen
    func desc() -> String {
        switch (self) {
        case .Jack: return "Jack"
        case .Queen: return "Queen"
        case .Ace: return "Ace"
        case .King: return "King"
        }
    }
}

var r = Rank.Jack
r.desc()
r = .Queen
r.desc()
