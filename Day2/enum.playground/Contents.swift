import Foundation

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    func desc() -> String {
        switch (self) {
        case .jack: return "Jack"
        case .queen: return "Queen"
        case .ace: return "Ace"
        case .king: return "King"
        default: return String(self.rawValue)
        }
    }
}

let r1 = Rank.jack
let r2 = Rank.queen
Rank.three.desc()

r1.rawValue
r2.rawValue
r1.rawValue < r2.rawValue

enum ServerResponse {
    case Result(String, String, Int)
    case Error(String)
}
let resp = ServerResponse.Result("Seoul", "OK", 200)
let err = ServerResponse.Error("Not Found")

func describe(about sr: ServerResponse) -> String {
    switch sr {
    case let .Result(city, msg, code):
        return "OK<\(city),\(msg),\(code)"
    case let .Error(emsg):
        return "NOK:\(emsg)"
    }
}

describe(about: resp)
describe(about: err)
