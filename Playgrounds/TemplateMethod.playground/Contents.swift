import UIKit

class ButtonTemplate : UIButton {
    func setTitleColor() {
        
    }
    
    func setBackgroundColor() {
        
    }
    
    func setTitle() {
        
    }
    
    func initialize() {
        setTitleColor()
        setBackgroundColor()
        setTitle()
    }
}

class AlertButton : ButtonTemplate {
    override func setTitle() {
        self.setTitle("Alert", for: .normal)
    }
}

class WarningButton : ButtonTemplate {
    override func setTitleColor() {
        self.setTitleColor(UIColor.red, for: .normal)
    }
    
    override func setTitle() {
        self.setTitle("Warning", for: .normal)
    }
}
