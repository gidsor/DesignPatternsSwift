//: Playground - noun: a place where people can play

import Cocoa

class ExercisesFactory {
    
    static let defaultFactory = ExercisesFactory()
    
    var exercises: [Exercise] = []
    
    func createExercise(id: Int) -> Exercise {
        for exercise in exercises {
            if exercise.id == id {
                return exercise
            }
        }
        
        let e = Exercise()
        exercises.append(e)
        return e
    }
}

class Exercise {
    var id: Int?
    
    var name: String?
    var description: String?
    
    var image: NSImage?
    var steps: [NSImage]?
    var video: Any?
}

class ExerciseInWorkout {
    var exercise: Exercise?
    var time: Double?
    
    static func createExerciseInWorkout(id: Int, time: Double) -> ExerciseInWorkout {
        let e = ExerciseInWorkout()
        e.exercise = ExercisesFactory.defaultFactory.createExercise(id: id)
        e.time = time
        return e
    }
}

class Workout {
    var exercises: [ExerciseInWorkout]?
    
    func start() { }
    
    func stop() { }
}

let w = Workout()
w.exercises?.append(ExerciseInWorkout.createExerciseInWorkout(id: 0, time: 20))
w.exercises?.append(ExerciseInWorkout.createExerciseInWorkout(id: 2, time: 20))
w.exercises?.append(ExerciseInWorkout.createExerciseInWorkout(id: 3, time: 20))
w.exercises?.append(ExerciseInWorkout.createExerciseInWorkout(id: 2, time: 20))
w.exercises?.append(ExerciseInWorkout.createExerciseInWorkout(id: 0, time: 20))
