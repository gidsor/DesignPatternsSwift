//: Playground - noun: a place where people can play

import Cocoa

protocol DeviceProtocol {
    func on()
    func off()
}

class Remote {
    var device: DeviceProtocol?
    
    func on() {
        device?.on()
    }
    
    func off() {
        device?.off()
    }
}

class TV: DeviceProtocol {
    func on() {
        print("TV on")
    }
    
    func off() {
        print("TV off")
    }
}

var r = Remote()
var tv = TV()
r.device = tv
r.on()
r.off()
