//: Playground - noun: a place where people can play

import UIKit
//
//var str = "Hello, playground"



//Write a program that adds the numbers 1-255 to an array
func upto255() -> [Int] {
    var myarr = [Int]()
    for i in 1...255 {
        myarr.append(i)
    }
    return myarr
}

print(upto255())


//var demo_arr = [Int]()
//demo_arr = [10, 20, 30, 40, 50, 60]
//print(demo_arr)
//demo_arr.insert(arc4random_uniform(UInt32), at: 1)

//Swap two random values in the array
var this_arr = upto255()


func swappy(myarr: inout [Int]) {
    let rand1 = Int(arc4random_uniform(UInt32(myarr.count)))
//    print(rand1)
    let rand2 = Int(arc4random_uniform(UInt32(myarr.count)))
//    print(rand2)
    let temp = myarr[rand1]
    myarr[rand1] = myarr[rand2]
    myarr[rand2] = temp
//    print(myarr)
}
swappy(myarr: &this_arr)

//Now write the code that swaps random values 100 times (You've created a "Shuffle"!)
func oneHundrent(arr: inout [Int]) {
    for _ in 1...1000 {
        swappy(myarr: &arr)
    }
}
oneHundrent(arr: &this_arr)
print("swapped 100 times => ", this_arr)


//Remove the value "42" from the array and Print "We found the answer to the Ultimate Question of Life, the Universe, and Everything at index __" and print the index of where "42" was before you removed it.

func find42(myarr: inout [Int]) -> String {
    var idx: Int = 0
    for i in 0...myarr.count-1 {
        if i >= myarr.count {
            break
        }
        if myarr[i] == 42 {
            idx = i
            myarr.remove(at: i)
            
            print("found!! 42 at \(idx)")
        }
    }
    return "42 was found at \(idx)" // even though this doesnt return
}

print(find42(myarr: &this_arr))




//Hint: you can use the arc4random_uniform(UInt32) function to get a random number from 0 to the number passed in. The arc4random_uniform function takes in one parameter that is of the UInt32 type and returns a random number that is of the UInt32 type. How can you deal with this using your knowledge of types?








