//: Playground - noun: a place where people can play

import Cocoa

class Phone {
    var type: String?
    var name: String?
    var osVersion: String?
    var price: Double?
}

protocol Builder {
    func reset()
    
    func setType()
    func setName()
    func setOSVersion()
    func setPrice()

    func getResult() -> Phone
}

class IPhoneBuilder : Builder {
    
    var phone: Phone = Phone()
    
    func reset() {
        phone = Phone()
    }
    
    func setType() {
        phone.type = "iPhone"
    }
    
    func setName() {
        phone.name = "iPhone SE"
    }
    
    func setOSVersion() {
        phone.osVersion = "iOS"
    }
    
    func setPrice() {
        phone.price = 18000
    }
    
    func getResult() -> Phone {
        return phone
    }
}

class AndroidBuilder : Builder {
    var phone: Phone = Phone()
    
    func reset() {
        phone = Phone()
    }
    
    func setType() {
        phone.type = "Android Phone"
    }
    
    func setName() {
        phone.name = "Xiaomi Mi A1"
    }
    
    func setOSVersion() {
        phone.osVersion = "Android"
    }
    
    func setPrice() {
        phone.price = 14000
    }
    
    func getResult() -> Phone {
        return phone
    }
}

class Director {
    private var builder: Builder
    
    init(builder: Builder) {
        self.builder = builder
    }
    
    func setBuilder(builder: Builder) {
        self.builder = builder
    }
    
    func createPhone() -> Phone {
        self.builder.reset()
        self.builder.setName()
        self.builder.setType()
        self.builder.setOSVersion()
        self.builder.setPrice()
        
        return self.builder.getResult()
    }
}

var iPhoneBuilder = IPhoneBuilder()
var androidBuilder = AndroidBuilder()
var director = Director(builder: iPhoneBuilder)
var phone = director.createPhone()
print(phone.name)
director.setBuilder(builder: androidBuilder)
phone = director.createPhone()
print(phone.name)
