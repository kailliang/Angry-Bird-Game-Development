

import UIKit

protocol subviewDelegate {
    func changeSomething()
}

class ViewController: UIViewController, subviewDelegate {
    
    func changeSomething() {
        //display.text = "X Position: " + String(Int((aimImageView.center.x)))
    }

    @IBOutlet weak var display: UILabel!
    //@IBOutlet weak var flowerImageView: DraggedImageView!
    
    @IBOutlet weak var aimImageView: DraggedImageView!
    
    
    
    
    // Do any additional setup after loading the view.
     //Create a new UIImageView from scratch
    //let aimView = DraggedImageView(image: nil)
        //Assign an image to the image view
    //aimView.image = DraggedImageView(named: "aim.png")
      //Assign the size and position of the image view
    //aimImageView.frame = CGRect(x:95, y: 400, width: 50, height: 100)
      //Add the image view to the main view
     //self.view.addSubview(aimView)
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        aimImageView.myDelegate = self
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

