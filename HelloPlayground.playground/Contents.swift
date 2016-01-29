//: Playground - noun: a place where people can play

import UIKit

var hello = "Hello"
hello = "not Hello"

var welcomeMessage = "Hello Everyone"
var myAge = 25
var myHeight = 159
myHeight = 170
let pi : Double = 3.14
let height: Double = 62

let multiplier = 5
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

//while loop
var n = 10
while n < 100 {
    n = n * 2
}
print(n)

var m = 10
repeat {
m = m * 2
} while m < 100

var shoppingList = ["Eggs","Milk"]
shoppingList += ["Flour"]
shoppingList.insert("Maple Syrup", atIndex: 0)
shoppingList.removeAtIndex(3)

let firstName = "Fabiola"
let middleName: String? = "Faye"
let lastName = "Wangman"

var greeting = "Hello!"
if let midName = middleName {
    greeting = "Hello \(firstName) \(midName) \(lastName)"
} else {
    greeting = "Hello \(firstName) \(lastName)"
}
print(greeting)

for character in "Cow?🐈".characters {
    if (character == "🐈") {
        print("kitty")
    } else {
        print(character)
    }
}

func sayGoodBye(personName: String) -> String
{
    let greeting = "Goodbye, " + personName + "!"
    return greeting
}

sayGoodBye("Fermi")
sayGoodBye("Fabby")