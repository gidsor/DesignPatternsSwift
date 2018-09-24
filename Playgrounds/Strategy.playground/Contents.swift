//: Playground - noun: a place where people can play

import Cocoa

protocol Strategy {
    func doAction(a: Double, b: Double) -> Double
}

class Sum: Strategy {
    func doAction(a: Double, b: Double) -> Double {
        return a + b
    }
}

class Mul: Strategy {
    func doAction(a: Double, b: Double) -> Double {
        return a * b
    }
}

class Div: Strategy {
    func doAction(a: Double, b: Double) -> Double {
        return a / b
    }
}

class Math: Strategy {
    
    private var instance: Strategy
    
    init(strategy: Strategy) {
        self.instance = strategy
    }
    
    func setStrategy(strategy: Strategy) {
        self.instance = strategy
    }
    
    func doAction(a: Double, b: Double) -> Double {
        return instance.doAction(a: a, b: b)
    }
}

var m = Math(strategy: Sum())
print(m.doAction(a: 5, b: 3))
m.setStrategy(strategy: Div())
print(m.doAction(a: 100, b: 10))
