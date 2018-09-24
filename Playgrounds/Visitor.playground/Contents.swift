import Cocoa

protocol Visitor {
    func visit(person: Person)
    func visit(note: Note)
}

protocol Acceptor {
    func showData(visitor: Visitor)
}

class Person: Acceptor {
    var firstName: String = ""
    var secondName: String = ""
    var email: String = ""
    
    func showData(visitor: Visitor) {
        visitor.visit(person: self)
    }
}

class Note: Acceptor {
    var title: String = ""
    var text: String = ""
    
    func showData(visitor: Visitor) {
        visitor.visit(note: self)
    }
}

class GeneratorTXT: Visitor {
    var txt: String = ""
    
    func visit(person: Person) {
        txt += person.firstName + " " + person.secondName + " " + person.email
    }
    
    func visit(note: Note) {
        txt += note.title + " " + note.text
    }
    
    func createTXT(array: [Acceptor]) {
        txt = ""
        for a in array {
            a.showData(visitor: self)
        }
    }
}

let array: [Acceptor] = [Person(), Person(), Person(), Note(), Note(), Note()]

var txtGenerator = GeneratorTXT()
txtGenerator.createTXT(array: array)
txtGenerator.txt
