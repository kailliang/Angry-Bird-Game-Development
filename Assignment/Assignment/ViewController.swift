//
//  ViewController.swift
//  Assignment
//
//  Created by kl18aba on 11/11/2019.
//  Copyright © 2019 kl18aba. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
         //Create a new UIImageView from scratch
       // let road1View = UIImageView(image: nil)
            //Assign an image to the image view
        //road1View.image = UIImage(named: "road1.png")
          //Assign the size and position of the image view
        //Make this image view fulfil the screen
         // road1View.frame = UIScreen.main.bounds
         //Add the image view to the main view
        //self.view.addSubview(road1View)
        
        
        
        // Do any additional setup after loading the view.
         //Create a new UIImageView from scratch
        //let aimView = UIImageView(image: nil)
            //Assign an image to the image view
        //aimView.image = UIImage(named: "aim.png")
          //Assign the size and position of the image view
        //aimView.frame = CGRect(x:95, y: 400, width: 50, height: 100)
          //Add the image view to the main view
         //self.view.addSubview(aimView)

    }
    
}



class Dragimage: UIImageView {

var startLocation: CGPoint?

override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    startLocation = touches.first?.location(in: self)
    
}
override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {

    let currentLocation = touches.first?.location(in: self)
    let dx = currentLocation!.x - startLocation!.x
    let dy = currentLocation!.y - startLocation!.y
    var newCenter = CGPoint(x: self.center.x+dx, y: self.center.y+dy)
    
    let halfx = self.bounds.midX
    newCenter.x = max(halfx, newCenter.x)
    newCenter.x = min(halfx + 100 , newCenter.x)
    //let halfy = self.bounds.midY
    newCenter.y = max(self.superview!.bounds.height / 2 - 50, newCenter.y)
    newCenter.y = min(self.superview!.bounds.height / 2 + 50, newCenter.y)
    
    
    self.center = newCenter
}
/*
// Only override draw() if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
override func draw(_ rect: CGRect) {
    // Drawing code
}
*/
override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    









    }


}

