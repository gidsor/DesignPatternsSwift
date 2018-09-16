//: Playground - noun: a place where people can play

import Cocoa

protocol Publisher {
    func addListener(listener: Listener)
    func removeListener(listener: Listener)
    func sendMessage(message: String)
}

protocol Listener {
    func doAction(message: String)
}

class Notificator : Publisher {
    
    var listeners: NSMutableArray = NSMutableArray()
    
    func addListener(listener: Listener) {
        listeners.add(listener)
    }
    
    func removeListener(listener: Listener) {
        listeners.remove(listener)
    }
    
    func sendMessage(message: String) {
        for listener in listeners {
            (listener as? Listener)?.doAction(message: message)
        }
    }
}

class NetworkManager : Notificator {
    func loadImage(url: URL?) -> NSImage? {
        sendMessage(message: "Image Loaded")
        return nil
    }
}

class Controller : Listener {
    
    var nm = NetworkManager()
    
    func didLoad() {
        nm.addListener(listener: self)
    }
    
    func doAction(message: String) {
        print("Message: \(message)")
    }

    func pushRefresh() {
        nm.loadImage(url: nil)
    }
}

let controller = Controller()
controller.didLoad()
controller.pushRefresh()
