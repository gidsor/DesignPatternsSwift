//: Playground - noun: a place where people can play

import Cocoa

protocol Chain {
    var nextStep: Chain? {get set}
    func check() -> (isSuccess: Bool, error: String)
}

class NetworkManager : Chain {
    var nextStep: Chain?
    
    func check() -> (isSuccess: Bool, error: String) {
        if !checkNetwork() {
            return (false, "No network")
        }
        
        if checkConnectionSpeed() < 3 {
            return (false, "No speed")
        }
        
        if nextStep != nil {
            return (nextStep!.check().isSuccess, nextStep!.check().error)
        } else {
            return (true, "")
        }
    }
    
    func checkNetwork() -> Bool {
        return true
    }
    
    func checkConnectionSpeed() -> Double {
        return 10.0
    }
}

class DownloadManager : Chain {
    var nextStep: Chain?
    
    func check() -> (isSuccess: Bool, error: String) {
        if !isServerAvailable() {
            return (false, "Server not available")
        }
        
        if nextStep != nil {
            return (nextStep!.check().isSuccess, nextStep!.check().error)
        } else {
            return (true, "")
        }
    }
    
    func isServerAvailable() -> Bool {
        return true
    }
}

class DeviceManager : Chain {
    var nextStep: Chain?
    
    func check() -> (isSuccess: Bool, error: String) {
        if iOSVersion() != "10.3" {
            return (false, "Version not supported")
        }
        
        if nextStep != nil {
            return (nextStep!.check().isSuccess, nextStep!.check().error)
        } else {
            return (true, "")
        }
    }
    
    func iOSVersion() -> String {
        return "10.3"
    }
}

class UpdateManager {
    var networkManager = NetworkManager()
    var downloadManager = DownloadManager()
    var deviceManager = DeviceManager()
    
    func update() {
        networkManager.nextStep = downloadManager
        downloadManager.nextStep = deviceManager
        
        let check = networkManager.check()
        
        if check.isSuccess {
            // make update
            print("Success")
        } else {
            print("Error: \(check.error)")
        }
    }
}

var um = UpdateManager()
um.update()
