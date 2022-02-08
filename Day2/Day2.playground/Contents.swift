import Foundation


func points(num:Int, bonus:(Int)->Bool) -> Int {
    var pt = num * 10
    if bonus(num) {
        pt += 1
    }
    return pt
}

func odd(nnn:Int) -> Bool {
    return (nnn % 2) != 0
}

points(num: 10, bonus: odd)
points(num: 7, bonus: odd)

func neg(nn:Int) ->Bool {
    return nn < 0
}

points(num: 7, bonus: neg)
points(num: -5, bonus: neg)

