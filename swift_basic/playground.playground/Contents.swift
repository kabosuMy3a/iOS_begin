import UIKit
import SwiftUI
/*
for i in 0...99 {i}
//safe, fast, expressive //
let a: Int = 100 ;
var b: Int = 200; b = 300;
var d : Double = 2.9 ;
var f : Float = 2.99;
var ui : UInt = 0; print(ui);
var flag : Bool = false ; flag = true ;
var char : Character = "가";
var s : String = "there is no \' in Swift, Use \"\nLDSF" ; print(s);

var num = 10 ; type(of: num);
*/


var numbers: Array<Int> = Array<Int>() ;
numbers.append(1) ;
numbers[0];
numbers.insert(4,at: 0);
numbers

var names : [String] = [];
var dict: [String: Int] = [:];
dict["Sun"] = 1;
dict.removeValue(forKey: "Sun");

var set: Set = Set<Int>() ;
set.insert(3); set.insert(2); set.insert(4); set.insert(2);
set.remove(3);

///
func fact(n : Int) -> Int {
    if n == 1 {
        return 1 ;
    } else {
        return n * fact(n: n-1);
    }
}
print(fact(n: 20));

func hello(me: String = "SunGyu") -> Void {
    print("Hello, I'm \(me)");
}
hello(me: "lo");

func sendMessage(from myName : String, _ name : String,
    _ nn : String) -> String {
    return "Hello \(name) \(nn)";
}

sendMessage(from: "Sungyu", "ss", "cc");

func sendMessage(from myName : String, frineds : String...) -> String {
    return "Hello \(frineds[0]) \(frineds[1])";
}
print(sendMessage(from: "Hi", frineds: "ss", "bb", "cc"));

let temp : Int = -1;
switch temp {
case ...0 :
    print("영하");
case 0...20 :
    print("실온");
case 20...:
    print("상온");
default:
    print("온도 입력");
}
