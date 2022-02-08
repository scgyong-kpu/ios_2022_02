import Foundation


func points(num:Int, bonus:(Int)->Bool) -> Int {
    var pt = num * 10
    if bonus(num) {
        pt += 1
    }
    return pt
}

let v = points(num: 4) {
    $0 % 2 != 0
}
v

func odd(nnn:Int) -> Bool {
    return (nnn % 2) != 0
}

points(num: 10, bonus: odd)
points(num: 7, bonus: odd)

func neg(nn:Int) ->Bool {
    return nn < 0
}

let negative = { (n:Int)->Bool in
    n < 0
}

negative(10)
negative(-10)

points(num: 7, bonus: neg)
points(num: -5, bonus: neg)

func incrementor(num:Int) -> (()->Int) {
    var value = 0
    func increase() -> Int {
        value += num
        return value
    }
    return increase
}

let inc3 = incrementor(num: 3)
let inc7 = incrementor(num: 7)
inc3()
inc3()
inc7()
inc7()
inc3()

func closure_only(bonus:(Int)->Bool) -> Int {
    let num = 5
    var pt = num * 10
    if bonus(num) {
        pt += 1
    }
    return pt
}

closure_only {
    $0 > 0
}

var nums = [ 1,43,43,54,23,65,23,543,32,54,43]
nums.sort(by: {(n1:Int, n2:Int)->Bool in n1 < n2 })
nums
nums.sort(by: {n1, n2 in n1 > n2 })
nums
nums.sort(by: {$0 < $1})
nums
nums.sort {$0 > $1}
nums
nums.sort(by:<)
nums
nums.sort()

//let gt:((Double,Double)->Bool) = >


// Upper case, Lower case
// case-sensitive vs case insensitive

//int a = 10;
//int A = 20;

//select * from ttable where ...nums
//SELECT * FROM

//Documents/
//    homeworks/
//        a.txt
//        A.txt

// CamelCase
// UpperCamelCase lowerCamelCase

// snake_case
// ALL_CAPS_UNDERSCORE


class Animal {
    var legCount = 0
    var name: String
    init(name: String) {
        self.name = name
    }
    func desc() -> String {
        return "Animal:\(name) with \(legCount) legs"
    }
}

let a1 = Animal(name: "Lark")
a1.desc()

class Mammal: Animal {
    override init(name: String) {
        super.init(name: name)
        self.legCount = 4
    }
    func giveBirth() -> Mammal {
        return baby()
    }
    func baby() -> Mammal {
        return Mammal(name: "Baby \(name)")
    }
}

let m1 = Mammal(name: "Elephant")
m1.desc()
let b = m1.giveBirth()
b.desc()
m1 is Mammal
// is-a relationship
m1 is Animal
let gc = b.giveBirth()
gc.name

class Dog: Mammal {
    func bark() -> String { "Bark!" }
    override func baby() -> Mammal {
        return Dog(name: "\(name)'s puppy")
    }
}

let jd = Dog(name: "Jindol")
let msg = jd.bark()
m1 is Dog
let puppy = jd.giveBirth()
puppy.name
if puppy is Dog {
    (puppy as! Dog).bark()
}
//puppy.bark()
//pupp
let ddd = (m1 as? Dog)
let msg2 = ddd?.bark()
//    .bark()

class Platypus: Mammal {
    override func giveBirth() -> Mammal {
        print("Laying an egg")
        return Platypus(name: "Platypus from an \(name)'s egg")
    }
}

//let pl = Platypus(name: "Pipi")
//let pl2 = pl.giveBirth()
//pl2.name

let animals = [
    Dog(name: "Jd"),
    Mammal(name: "Elephant"),
    Platypus(name: "Pipi")
]

for a in animals {
//    if a is Dog {
//    } else if a is Platypus {
//    } else {
//    }
    let child = a.giveBirth()
    print(a.name, child.name)
}

class Monster: Mammal {
    // stored property vs computed porperty
    var kneeCount: Int { legCount }
    var toeCount: Int {
        get {
            return legCount * 4
        }
        set(count) {
            legCount = count / 4
        }
    }
    var eyeCount = 0 {
        didSet {
            legCount = 2 * eyeCount
        }
    }
//    func getKneeCount()->Int { legCount }
}
let m = Monster(name: "Mon")
//m.toeCount = 64
m.eyeCount = 128
m.legCount
m.kneeCount
m.toeCount
