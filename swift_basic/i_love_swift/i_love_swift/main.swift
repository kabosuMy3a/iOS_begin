import Foundation

/*
print("Hello, World!")

let num = Int(readLine()!.split(separator: " ")[0])! ;
var ans : String ;
if num >= 90 {
    ans = "A";
} else if  (num >= 80) && (num < 90){
    ans = "B";
} else if num >= 70 {
    ans = "C";
} else if num >= 60 {
    ans = "D";
} else {
    ans = "F";
}

print(ans);

//

let label = "The width is "
let width = 94
let widthLabel = label + String(width);
let ss : String = "0" ;
print(ss + widthLabel);
if let a = Int(ss) {
    print(a + width);
} else {
    print("?");
}
*/

/*
var itemlist : [String] =  [] ;
var cart : [String : Int] = [:] ;
itemlist.append("Sungyu");
itemlist += ["love", "sun", "got"];
for i in itemlist {
    cart[i] = 1 ;
    print(i) ;
}

cart["love"] = 2 ;
cart.updateValue(11, forKey: "sun");
for i in cart {
    print(i.key + ", " + String(i.value));
}

for i in 0...9 {
    print(i, terminator: " ");
}
print();
*/

var optionalName : String? ;
//optionalName = readLine();
print("\(optionalName ?? "Anonymous")");
/*
if let name = optionalName {
    print(name);
} else {
    print("Anonymous") ;
}*/

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let suffix where suffix.hasSuffix("pepper"):
    if suffix.hasPrefix("red") {
        print("REDREDRED");
    }
    print("Is it a spicy \(suffix)?")
default:
    print("Everything tastes good in soup.")
}
// Prints "Is it a spicy red pepper?"

let vega : String? = nil;
switch vega {
case nil :
    print("molu");
default :
    print(vega!);
}

var i = 0 ;
repeat {
    print(i, terminator: " ");
    i += 3;
} while i < 22 ;
print();

for _ in 0..<3 {
    print("hi", terminator: " ");
}
print();

for i in (1...10).reversed() {
    print(i, terminator: " ");
}
print();

for i in stride(from: 20, to: 0, by: -2){
    print(i, terminator: " ");
}
print();

for i in stride(from: 20, through: 0, by: -2).sorted(by: <){
    print(i, terminator: " ");
}
print();

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest : (String, Int, Int, Int) = ("",0,0,0);
for (s, nums) in interestingNumbers {
    for num in nums {
        if num > largest.3 {
            largest = (s, num,num,num);
        }
    }
}
print(largest);

func calculators(scores: [Int]) -> (min: Int, max: Int, sum: Int){
    var min = scores[0];
    var max = scores[0];
    var sum = 0 ;
    return (min, max, sum);
}
print(calculators(scores: [1,2,3,4]).min);

///함수와 클로저
func makeIncrement() -> ((Int) -> Int){
    func addOne(number : Int) -> Int {
        return 1 + number;
    }
    return addOne ;
}


var increment = makeIncrement();
print(increment(7));

var a = 0 ;
print(a^1);
///- 함수와 클로저

/* 나눗셈
var ans : Set<Int> = Set<Int>();
for _ in 0..<10 {
    let a = Int(readLine()!.split(separator: " ")[0])!
    ans.insert(a % 42);
}
print(ans.count);
*/
///- 나눗셈 백준 브론즈 2
