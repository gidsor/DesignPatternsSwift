//: Playground - noun: a place where people can play

import Cocoa

protocol PrintProtocol {
    func print(array: [String])
}

class Print {
    func printString(string: String) {
        print(string)
    }
}

class Adapter : PrintProtocol {
    var print: Print
    
    init(print: Print) {
        self.print = print
    }
    
    func print(array: [String]) {
        for e in array {
            print.printString(string: e)
        }
    }
}

var a = Adapter(print: Print())
a.print(array: ["1", "2", "3", "4", "5"])
