import UIKit

let a = 200 // type inference
var b = 405
let c = Int(a) + (b)
b += 20
print(c)
print(type(of: c))
var greeting = "Hello,\(c) playground"
print(greeting)
type(of: greeting)
// string interpolation
let aa = "hello \(greeting)world"
var arr = [ a, b, c ]
let bbb:[Any] = [ "a", "b", "c", 4 ]
let ccc = [ 1.2, 3.4, 5.6, 8.8 ]
let ddd = [ "d",  "e"]
let eee = [ bbb, ddd]
if ccc.count > 3 {
    ccc[3] // 3 == index
}
NSLog("Hello")
print("world")

arr.append(32)
arr.isEmpty
let x = arr.first
arr = []
arr.removeAll()
let y = arr.first

let kkkk:[Double] = []
let kkkk2 = [Double]()

//1. optional
//2. closure

//let msec: Int? = findevent("abcd")
//if msec == nil {
//
//} else {
//    int microseconds = 1000 * msec
//}
//int n = "Hello".indexOf('x')
//if (n < 0) {
//    // not found
//}
//
//int msec  = findevent("hello")
//if (msec == INT_MAX) {
//
//}

let d = [ "name": "Kim", "addr":  "Seoul", "hello": "world"]


let v1 = d["name"]
type(of:v1)
let v = d["hello"]
if (v != nil) {
    v
}

print(type(of: arr))

// type strict
// parenthesis ()
// curly brace {}
// square bracket []
// angled bracket <>

func greet(name:String, day:String) -> (moreThanThree:Bool, msg:String) {
    return (name.count > 3, "Hello \(name), today is \(day)")
}

let m1 = greet(name: "Haa", day: "Monday")
let m2 = greet(name: "Hoo", day: "Tuesday")
//greet("Hii", "Wednesday");
m1.0
m1.1

let t1 = (x:10, y:20)
var t2 = (width: 40, height: 30)

//t2 = t1

func hhh(v: (x:Int, y:Int)) {
    
}
hhh(v:t1)
//hhh(v:t2)
