//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let explicitDouble:Double = 80

var values = ["integrity", "patience", "self-discipline", "appreciation"]
values[2] = "humility"

var occupations = [
    "Terry" : "iOS Developer",
    "Katie" : "Marine Biologist"
]

occupations["TerryAt28"] = "Great Job with good pay, good colleagues, good mentor that brings me to a good place."

var newStringsArray = [String]()
var newDictionary = [Int: String]()

var optionalName: String? = nil
var realName: String = "Terry"
var thisVariableName = optionalName ?? realName
print(thisVariableName)

let vegetable = "brocolli"
switch vegetable {
    case "celery":
        print("healthy light tall green")
    case "apple", "orange":
        print("those are fruits")
    case let x where x.hasPrefix("bro"):
        print("probably brocolli")
    default: print("default yo")
}


for i in 0..<4 { //..< means up to that upper bound, non inclusive
    print(i)
}

for i in 0...4 { //... is inclusive in swift
    print(i)
}


func greet(_ name: String, on day: String) -> Void {
    //"Argument Label" of a function is what gets displayed to the programmer when you are trying to use the function in the code and you are putting arguments into the function. By default, functions use their 'parameter names' as argument labels but you can also create your CUSTOM argument labels like this. _ means no argument label whatsoever.
    print("hi \(name), it's \(day)")
}

greet("John", on: "Wednesday")

func noArgument(_ name: String, _ day: String) -> Void {
    print("sup \(name), its \(day)")
}

noArgument("Jake", "Tuesday")


//use a tuple which is a compound value 
func calculateMinMaxSum(ints: [Int]) -> (min: Int, max: Int, sum:Int) {
    var min=ints[0], max=ints[0], sum=0
    for int in ints {
        if int > max {
            max = int
        }
        if int < min {
            min = int
        }
        sum += int
    }
    return (min, max, sum)
}

var stats = calculateMinMaxSum(ints: [1,2,3,4,5,10])
print(stats.sum)
print(stats.max)
print(stats.1) //you can access a tuple's elements by either name or number where 0 refers to the first element
print(stats.0)


//functions can also take a VARIABLE # of arguments, collecting them into an array
func getAverageOf(ints: Int...) -> Int{
    var total = 0
    for int in ints {
        total += int
    }
    return total/ints.count
}

print(getAverageOf(ints: 2,4,6,8,10)) //isn't it easier just to pass a real array -_-; 


//Functions can be nested. Nested functions have access to the variables declared in the outer function. This is to organize a long, complex function into shorter parts

func addTwoAndMultiplyBy10(num: Int) -> Int {
    var total = num
    func addTwoFirst() {
        //you can't directly edit num because arguments passed into functions are 'lets' by default.
        total = num + 2
    }
    addTwoFirst()
    return total * 10
}

print(addTwoAndMultiplyBy10(num: 50))
//Functions can pass other functions into its arguments OR return a function as its return type



//Swift characters don't work like other characters and are able to save emojis, korean characters, etc, and each char can require different amounts of MEMORY to store which makes things complicated and string chars can't be indexed by integer values like other languages ... such as string[i] 


//Strings are not arrays in Swift so you can't access them with integer subscripts
//Reason being Swift characters are made up of Unicode-scalar values that look like "U-3242" or "U-32DJF" and this system is a point-based system, and we need to loop over each Unicode scalar from start or end of a string to determine where a char is in that string. So we use what are "index types" and this is for all Collection protocol like String, Array, Dictionary, Set.

let stringTest = "test?"
let index = stringTest.index(before: stringTest.endIndex)
print(index)
print(stringTest[index])














