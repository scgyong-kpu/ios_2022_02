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

protocol Increasing {
    func increasedValue(amount:Int) -> Int
    mutating func increase(amount: Int)
}

extension Int: Increasing {
    func increasedValue(amount: Int) -> Int {
        return self + amount
    }
    mutating func increase(amount: Int) {
        self += amount
    }
}

var v = 3
v.increase(amount: 10)

3.increasedValue(amount: 4)
//3.increase(amount: 4)

var aaa = [ 6, 1, 2 ]
aaa.append(3)

aaa.sorted()
aaa
aaa.sort()
aaa

extension Double: Increasing {
    func increasedValue(amount: Int) -> Int {
        return Int(self) + amount
    }
    mutating func increase(amount: Int) {
        self += Double(amount)
    }
}

10.increasedValue(amount: 3)
20.7.increasedValue(amount: 4)

let numbers:[Increasing] = [ 5, 6.7 ]
for n in numbers {
    n.increasedValue(amount: 500)
}
