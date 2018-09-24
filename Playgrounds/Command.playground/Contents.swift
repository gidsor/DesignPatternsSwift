//: Playground - noun: a place where people can play

import Cocoa

protocol Command {
    func on()
    func off()
}

class Heating {
    func setDegrees(value: Int) {
        print("Включаем отопление на \(value) градусов")
    }
    
    func off() {
        print("Выключаем отопление")
    }
}

class Light {
    func on() {
        print("Включаем свет")
    }
    
    func off() {
        print("Выключаем свет")
    }
}

class Sound {
    func playMusic(songName: String) {
        print("Включаем песню: \(songName)")
    }
    
    func stop() {
        print("Выключаем музыку")
    }
}

class HeatingCommand: Command {
    var heating: Heating
    
    init(heating: Heating) {
        self.heating = heating
    }
    
    func on() {
        self.heating.setDegrees(value: 23)
    }
    
    func off() {
        self.heating.off()
    }
}

class LightCommand: Command {
    var light: Light
    
    init(light: Light) {
        self.light = light
    }
    
    func on() {
        self.light.on()
    }
    
    func off() {
        self.light.off()
    }
}

class SoundCommand: Command {
    var sound: Sound
    
    init(sound: Sound) {
        self.sound = sound
    }
    
    func on() {
        self.sound.playMusic(songName: "hello.song")
    }
    
    func off() {
        self.sound.stop()
    }
}

var sound = Sound()
var light = Light()
var heating = Heating()

func onAll() {
    LightCommand(light: light).on()
    HeatingCommand(heating: heating).on()
    SoundCommand(sound: sound).on()
}

onAll()
