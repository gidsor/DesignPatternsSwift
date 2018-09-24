//: Playground - noun: a place where people can play

import Cocoa

protocol Button {
    var size: CGRect? {set get}
    func pushButton()
}

class ButtonIPhone: Button {
    var size: CGRect?
    func pushButton() {
        print("Push iPhone button!")
    }
}

class ButtonIPad: Button {
    var size: CGRect?
    func pushButton() {
        print("Push iPad button!")
    }
}

protocol Image {
    var size: CGRect? {set get}
    func pushOnImage()
}

class ImageIPhone: Image {
    var size: CGRect?
    func pushOnImage() {
        print("Push on iPhone image")
    }
}

class ImageIPad: Image {
    var size: CGRect?
    func pushOnImage() {
        print("Push on iPad image")
    }
}

protocol TextView {
    var size: CGRect? {set get}
    func didEnterText()
}

class TextViewIPhone: TextView {
    var size: CGRect?
    func didEnterText() {
        print("Enter text on iPhone")
    }
}

class TextViewIPad: TextView {
    var size: CGRect?
    func didEnterText() {
        print("Enter text on iPad")
    }
}


protocol AbstractFactory {
    func createButton() -> Button
    func createImage() -> Image
    func createTextView() -> TextView
}

class IPhoneFactory: AbstractFactory {
    func createButton() -> Button {
        return ButtonIPhone
    }
    
    func createImage() -> Image {
        return ImageIPhone
    }
    
    func createTextView() -> TextView {
        return TextViewIPhone
    }
}

class IPadFactory: AbstractFactory {
    func createButton() -> Button {
        return ButtonIPad
    }
    
    func createImage() -> Image {
        return ImageIPad
    }
    
    func createTextView() -> TextView {
        return TextViewIPad
    }
}

var factory: AbstractFactory?

var button: Button?
var image: Image?
var textView: TextView?

let currentDevice = "iPhone"

if currentDevice == "iPhone" {
    factory = IPhoneFactory()
} else if currentDevice == "iPad" {
    factory = IPadFactory()
}


button = factory.createButton()
image = factory.createImage()
textView = factory.createTextView()
