//: Playground - noun: a place where people can play

import Cocoa

class Person {
    var firstName: String = ""
    var secondName: String = ""
    
    init(firstName: String, secondName: String) {
        self.firstName = firstName
        self.secondName = secondName
    }
    
    func clone() -> Person {
        return Person(firstName: self.firstName, secondName: self.secondName)
    }
}

var p = Person(firstName: "Vadim", secondName: "Denisov")
var p1 = p.clone()

