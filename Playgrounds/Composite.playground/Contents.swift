//: Playground - noun: a place where people can play

import Cocoa

protocol Composite {
    var name: String {get set}
    func showContent() -> Any
    func addComponent(c: Composite)
}

class File : Composite {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func showContent() -> Any {
        return name
    }
    
    func addComponent(c: Composite) {
        print("К файлу не могу добавить папку")
    }
}

class Folder : Composite {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    var content: [Composite] = []
    
    func showContent() -> Any {
        return content
    }
    
    func addComponent(c: Composite) {
        content.append(c)
    }
}

func printComposite(currentFolder: Composite, tab: String = "") {
    for c in (currentFolder.showContent() as! [Composite]) {
        print(tab + c.name)
        if c is Folder {
            printComposite(currentFolder: c, tab: tab + "\t")
        }
    }
}

var currentFolder: Composite = Folder(name: "Main folder")
currentFolder.addComponent(c: File(name: "File 1"))
currentFolder.addComponent(c: File(name: "File 2"))
var newFolder: Composite = Folder(name: "Folder 1")
currentFolder.addComponent(c: newFolder)
newFolder.addComponent(c: File(name: "File 21"))
newFolder.addComponent(c: File(name: "File 22"))
newFolder.addComponent(c: File(name: "File 23"))

print(currentFolder.name)
printComposite(currentFolder: currentFolder, tab: "\t")
