

import UIKit

protocol subviewDelegate {
    func changeSomething()
    
}

class ViewController: UIViewController, subviewDelegate {
    
    // ballllllllllllllllll
    
    
    
    //Create a new UIImageView from scratch
     //let aimImageView = DraggedImageView(image: nil)
         //Assign an image to the image view
     //aimImageView.image = UIImage(named: "aim.png")
       //Assign the size and position of the image view
    // aimImageView.frame = CGRect(x:50, y: 50, width: 50, height: 50)
       //Add the image view to the main view
     // self.view.addSubview(aimImageView)
    
    func changeSomething() {
        //display.text = "X Position: " + String(Int((aimImageView.center.x)))
        let ballImageView = UIImageView(image: nil)
        ballImageView.image = UIImage(named: "bsll.png")
           //Assign the size and position of the image view
        ballImageView.frame = CGRect(x:50, y: 50, width: 50, height: 50)
           //Add the image view to the main view
        self.view.addSubview(ballImageView)
    }

    @IBOutlet weak var aimImageView: DraggedImageView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    
       // ballImageView.myDelegate = self
        
       //Screen-Fit
        aimImageView.center = CGPoint(x: aimImageView.bounds.midX + 50, y: UIScreen.main.bounds.height / 2)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }


}

