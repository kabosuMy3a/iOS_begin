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

///black jack bronze 2
/*
let first_line  = readLine()!.split(separator: " ");
let N = Int(first_line[0])!; let M = Int(first_line[1])! ;
let nums = readLine()!.split(separator: " ").map({Int($0)!});

var ans = 0;
for i in 0..<nums.count {
    if i+1 >= nums.count {continue;}
    for j in i+1..<nums.count {
        if j+1 >= nums.count {continue;}
        for k in j+1..<nums.count {
            let sum = nums[i] + nums[j] + nums[k] ;
            var prev : Int ; var cur : Int ;
            prev = M - ans ;
            if sum <= M  {
                cur = M - sum ;
                if cur < prev { ans = sum ;}
            }
        }
    }
}

print(ans);
 */
///-black jack bronze 2

///-x,y sorting boj 11651
/*
let N = Int(readLine()!)!;
var positions : [(x: Int, y: Int)] = [];
for _ in 0..<N {
    let line = readLine()!.split(separator: " ");
    positions.append((Int(line[0])!, Int(line[1])!));
}
            
//positions.sort{$0.y == $1.y ? $0.x < $1.x : $0.y < $1.y} ;

positions.sort(by: {
        if $0.y == $1.y {
            return $0.x < $1.x
        } else {
            return $0.y < $1.y
        }
})

for i in 0..<N {
    print(positions[i].x,terminator: " ");
    print(positions[i].y);
}
*/
/// -x,y sorting boj 11651

///동전 0 - s3
/*
let l = readLine()!.split(separator: " ");
let N = Int(l[0])! ; var K = Int(l[1])! ;
var coins : [Int] = [];
for _ in 0..<N{
    coins.append(Int(readLine()!)!);
}
coins.reverse(); var ans = 0 ;
for coin in coins {
    ans += K / coin ;
    K %= coin ;
}
print(ans);
*/
///-

///물병 - s1

let line  = readLine()!.split(separator: " ");
var N = Int(line[0])! ; let K = Int(line[1])!;

var cur = N ;
while true {
    var cnt = 0 ;
    let bin : String = String(cur, radix: 2);
    for c in bin {
        if c == "1" {cnt += 1;}
    }
    
    if cnt <= K {
        print(cur - N);
        exit(0);
        /*
         https://zeddios.tistory.com/1252
         앱을 예쁘게 종료하기
         */
    }
    
    cur += cur & (-cur) ;
}


///-
