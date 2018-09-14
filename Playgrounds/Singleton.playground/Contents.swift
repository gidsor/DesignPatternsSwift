//: Playground - noun: a place where people can play

import Cocoa

class Settings {
    
    static var sharedInstance = Settings()
    
    var volumeLevel: Float = 50
    
    private init() {
        print("Settings is loaded")
    }
    
    func resetSettings() {
        print("Reset to default settings...")
        Settings.sharedInstance = Settings()
    }
}

print(Settings.sharedInstance.volumeLevel)

Settings.sharedInstance.volumeLevel = 24
print(Settings.sharedInstance.volumeLevel)

Settings.sharedInstance.resetSettings()
print(Settings.sharedInstance.volumeLevel)
