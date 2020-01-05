

import UIKit

class DraggedImageView: UIImageView {
    
    var myDelegate: subviewDelegate?
    
    var startLocation: CGPoint?
    
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        //startLocation = CGPoint(x:self.superview!.bounds.width/2, y: self.bounds.midY+50)
        
        startLocation = touches.first?.location(in: self)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let currentLocation = touches.first?.location(in: self)
        let dx = currentLocation!.x - startLocation!.x
        let dy = currentLocation!.y - startLocation!.y
        var newCenter = CGPoint(x: self.center.x+dx, y: self.center.y+dy)
        
        
        
        
        newCenter.x = min(self.bounds.midX + 100, newCenter.x)
        newCenter.x = max(self.bounds.midX, newCenter.x)
        //let halfy = self.bounds.midY
        newCenter.y = max(self.superview!.bounds.height / 2 - 50, newCenter.y)
        newCenter.y = min(self.superview!.bounds.height / 2 + 50, newCenter.y)
        
        
        self.center = newCenter

        //self.myDelegate?.changeSomething()
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    
        // aim goes back after shooting------------------------
        UIView.animate(withDuration: 0.4, delay: 0, options: .curveEaseInOut, animations:
            {
            () -> Void in
            
            self.center = CGPoint(x: self.bounds.midX + 50, y: self.superview!.bounds.height / 2)
            
            }, completion: { (success) -> Void in
                
            })
        //--------------------------------------
        
        // ----- shoot a balllllllllllllllllllll after aiming
        
        self.myDelegate?.changeSomething()ßß
        
    }

    
    
    
}


