//: Playground - noun: a place where people can play

import Cocoa

protocol MacBook {
    var price: Int {get}
    var description: String {get}
}

class MacBookAir : MacBook {
    var price: Int {
        get {
            return 50000
        }
    }
    var description: String {
        get {
            return "MacBook Air"
        }
    }
}

class MacBookDecorator : MacBook {
    var price: Int {
        get {
            return instance.price
        }
    }
    var description: String {
        get {
            return instance.description
        }
    }
    
    var instance: MacBook
    init(macBook: MacBook) {
        instance = macBook
    }
}

class UpgradeOne : MacBookDecorator {
    override var price: Int {
        get {
            return instance.price + 5999
        }
    }
    
    override var description: String {
        get {
            return instance.description + " + Upgrade 1"
        }
    }
    
    override init(macBook: MacBook) {
        super.init(macBook: macBook)
    }
}

class UpgradeTwo : MacBookDecorator {
    override var price: Int {
        get {
            return instance.price + 6999
        }
    }
    
    override var description: String {
        get {
            return instance.description + " + Upgrade 2"
        }
    }
    
    override init(macBook: MacBook) {
        super.init(macBook: macBook)
    }
}

var macBook: MacBook = MacBookAir()
macBook = UpgradeOne(macBook: macBook)
macBook = UpgradeTwo(macBook: macBook)
macBook.description
macBook.price
