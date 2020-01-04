

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
        
        
        
        
        newCenter.x = min(self.superview!.bounds.width/2 + 40, newCenter.x)
        newCenter.x = max(self.superview!.bounds.width/2 - 40, newCenter.x)
        //let halfy = self.bounds.midY
        newCenter.y = max(self.bounds.midY+20, newCenter.y)
        newCenter.y = min(self.bounds.midY+100, newCenter.y)
        
        
        self.center = newCenter

        self.myDelegate?.changeSomething()
    }
    
}


