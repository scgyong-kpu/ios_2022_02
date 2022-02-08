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
    var name = ""
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
    func desc() -> String {
        return "Animal:\(name) with \(legCount) legs"
    }
}

let a1 = Animal()
//////////
a1.desc()
a1.name = "Lark"
a1.desc()


//let d1 = a1.desc()
//let l1 = a1.legCount
//
//let m1 = Animal()
//m1.legCount = 10
//let desc = m1.desc()
//let d2 = a1.desc()
//m1.legCount
//a1.legCount



