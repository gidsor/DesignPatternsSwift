import UIKit

class ButtonTemplate : UIButton {
    func setColorTitle() {
        
    }
    
    func setColorBackground() {
        
    }
    
    func setTitle() {
        
    }
    
    func initialize() {
        setColorTitle()
        setColorBackground()
        setTitle()
    }
}

class AlertButton : ButtonTemplate {
    override func setTitle() {
        self.setTitle("Alert", for: .normal)
    }
}
