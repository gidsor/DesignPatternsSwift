//: Playground - noun: a place where people can play

import Cocoa

protocol State {
    func doAction(compitionHandler: ((State)->Void)?)
}

class StateOne : State {
    func doAction(compitionHandler: ((State)->Void)?) {
        print("Action in state 1")
        compitionHandler?(StateTwo())
    }
}

class StateTwo : State {
    func doAction(compitionHandler: ((State)->Void)?) {
        print("Action in state 2")
        compitionHandler?(StateThree())
    }
}

class StateThree : State {
    func doAction(compitionHandler: ((State)->Void)?) {
        print("Action in state 3")
    }
}

class MainClass : State {
    
    var currentState: State = StateOne()
    
    func doAction(compitionHandler: ((State)->Void)?) {
        currentState.doAction { (state) in
            self.currentState = state
            compitionHandler?(state)
        }
    }
}

var m = MainClass()
m.doAction(compitionHandler: nil)
m.doAction(compitionHandler: nil)
m.doAction(compitionHandler: nil)
m.currentState = StateOne()
m.doAction(compitionHandler: nil)
