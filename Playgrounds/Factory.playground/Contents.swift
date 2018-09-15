//: Playground - noun: a place where people can play

import Cocoa

protocol Exercise {
    var name: String {get}
    var type: String {get}
    func start()
    func stop()
}

class Squats : Exercise {
    var name: String = "Приседания"
    var type: String = "Упражнения для ног"
    
    func start() {
        print("Начинаем приседать")
    }
    
    func stop() {
        print("Заканчиваем приседать")
    }
}

class PushUps : Exercise {
    var name: String = "Отжимания"
    var type: String = "Упражнения для рук"
    
    func start() {
        print("Начинаем отжиматься")
    }
    
    func stop() {
        print("Заканчиваем отжиматься")
    }
}

class Jogging : Exercise {
    var name: String = "Пробежка"
    var type: String = "Упражнения для выносливости"
    
    func start() {
        print("Начинаем бегать")
    }
    
    func stop() {
        print("Заканчиваем бегать")
    }
}

enum Exercises {
    case squarts, pushups, jogging
}

class FactoryExercises {
    private init() { }
    
    static func createExercises(name: Exercises) -> Exercise? {
        switch name {
        case .squarts:
            return Squats()
        case .pushups:
            return PushUps()
        case .jogging:
            return Jogging()
        default:
            return nil
        }
    }
}

var exercisesArray: [Exercise] = []

if let exercise = FactoryExercises.createExercises(name: .squarts) {
    exercisesArray.append(exercise)
}

if let exercise = FactoryExercises.createExercises(name: .jogging) {
    exercisesArray.append(exercise)
}

for e in exercisesArray {
    e.start()
    e.stop()
}
