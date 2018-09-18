import UIKit

struct Point {
    var x: CGFloat
    var y: CGFloat
    var color: UIColor
    
    init(x: CGFloat, y: CGFloat) {
        self.x = x
        self.y = y
        self.color = UIColor.black
    }
    
    init(x: CGFloat, y: CGFloat, color: UIColor) {
        self.x = x
        self.y = y
        self.color = color
    }
}

class Painter {
    private var points: [Point] = []
    
    func addPoint(point: Point) {
        points.append(point)
    }
    
    func printPoints(in view: UIView) {
        for v in view.subviews {
            v.removeFromSuperview()
        }
        
        for p in points {
            let v = UIView(frame: CGRect(x: p.x, y: p.y, width: 3, height: 3))
            v.backgroundColor = p.color
            view.addSubview(v)
        }
    }
    
    func save() -> PainterMemento {
        return PainterMemento(points: self.points)
    }
    
    func load(state: PainterMemento) {
        self.points = state.points
    }
}

class PainterMemento {
    var points: [Point]
    
    init(points: [Point]) {
        self.points = points
    }
}

class CarrierState {
    var state: PainterMemento?
    var painter: Painter
    
    init(painter: Painter) {
        self.painter = painter
    }
    
    func save() {
        state = painter.save()
    }
    
    func load() {
        if state == nil { return }
        painter.load(state: state)
    }
}
