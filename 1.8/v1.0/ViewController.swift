

import UIKit

protocol subviewDelegate {
    func changeSomething()
    func updateAngle(x: CGFloat, y:CGFloat)
}

class ViewController: UIViewController, subviewDelegate{
    
    // ballllllllllllllllll
   
    var dynamicAnimator:UIDynamicAnimator!
    var collisionBehavior: UICollisionBehavior!
    var gravityBehavior: UIGravityBehavior!
    var collisionBehaviour: UICollisionBehavior!
    var dynamicItemBehavior: UIDynamicItemBehavior!
    var angleX: CGFloat = 0.0
    var angleY: CGFloat = 0.0
    //var x = 0
    //var y = 0
    var H = UIScreen.main.bounds.height
    var W = UIScreen.main.bounds.width
    var ballsarray:[UIImageView] = []
    var birdsarray:[UIImageView] = []
    //var barrierView: UIImageView!
    //var barrier: String!
    //Create a new UIImageView from scratch
     //let aimImageView = DraggedImageView(image: nil)
         //Assign an image to the image view
     //aimImageView.image = UIImage(named: "aim.png")
       //Assign the size and position of the image view
    // aimImageView.frame = CGRect(x:50, y: 50, width: 50, height: 50)
       //Add the image view to the main view
     // self.view.addSubview(aimImageView)
    
    func updateAngle(x: CGFloat, y:CGFloat){
        angleX = x*10
        angleY = y*10
           
       }
    
    
    func changeSomething() {
        //display.text = "X Position: " + String(Int((aimImageView.center.x)))
        let ballImageView = UIImageView(image: nil)
        ballImageView.image = UIImage(named: "ball.png")
           //Assign the size and position of the image view
        ballImageView.frame = CGRect(x: aimImageView.bounds.midX + 50, y: UIScreen.main.bounds.height / 2 - 25, width: 50, height: 50)
           //Add the image view to the main view
        self.view.addSubview(ballImageView)
        
        ballsarray.append(ballImageView)
        
        /// adding dynamic to balls      -----------------------------------
        dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
            dynamicItemBehavior = UIDynamicItemBehavior(items: ballsarray)
            dynamicAnimator.addBehavior(dynamicItemBehavior)
                         
            //Add one item at a time
            dynamicItemBehavior.addItem(ballImageView)
            
            dynamicItemBehavior.addLinearVelocity(CGPoint(x: angleX, y: angleY), for: ballImageView)
    
            collisionBehavior = UICollisionBehavior(items: ballsarray)
            collisionBehavior.setTranslatesReferenceBoundsIntoBoundary(with: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: -99999))
            
            dynamicAnimator.addBehavior(collisionBehavior)
            
        
    }
    
    
    @IBOutlet weak var aimImageView: DraggedImageView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let barrierView = UIView(frame: CGRect(x: W/2 - W/12, y: H/2 - H/6, width: W/6, height: H/3))
        barrierView.backgroundColor = UIColor.red
        view.addSubview(barrierView)
        //collisionBehavior.addItem(barrierView)
        collisionBehavior.addBoundary(withIdentifier: "barrier" as NSCopying, for: UIBezierPath(rect: barrierView.frame))
        //let box = UIImageView(frame: CGRect(x: W/2 - 50, y: H/2 - 50, width: 100, height: 100))
            //box.backgroundColor = .gray//view.addSubview(box)
        //dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
        //dynamicItemBehavior = UIDynamicItemBehavior(items: [box])
        //dynamicItemBehavior.addItem(box)
        //collisionBehavior = UICollisionBehavior(items: [box])
        //dynamicAnimator.addBehavior(collisionBehavior)
            
        //ballsarray.append(box)
        
        // add birds------------------------------------------------------------
        let bird1ImageView = UIImageView(image: nil)
        bird1ImageView.image = UIImage(named: "bird1.png")
             //Assign the size and position of the image view
        bird1ImageView.frame = CGRect(x: W - H/5 - 20, y: H / 5 - H / 5, width: H/5, height: H/5)
             //Add the image view to the main view
        self.view.addSubview(bird1ImageView)
        
        let bird2ImageView = UIImageView(image: nil)
        bird2ImageView.image = UIImage(named: "bird2.png")
             //Assign the size and position of the image view
        bird2ImageView.frame = CGRect(x: W - H/5 - 20, y: H / 5, width: H/5, height: H/5)
             //Add the image view to the main view
        self.view.addSubview(bird2ImageView)
        //collisionBehavior = UICollisionBehavior(items: [bird2ImageView])
        birdsarray.append(bird2ImageView)
     
        
        
        
    
        aimImageView.myDelegate = self
        
       //Screen-Fit
        aimImageView.center = CGPoint(x: aimImageView.bounds.midX + 50, y: UIScreen.main.bounds.height / 2)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }


}

