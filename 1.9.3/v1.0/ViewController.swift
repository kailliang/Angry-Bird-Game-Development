

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
    var p1 = CGPoint(x:100, y:500)
    var p2 = CGPoint(x:300, y:500)
    var H = UIScreen.main.bounds.height
    var W = UIScreen.main.bounds.width
    var ballsarray:[UIImageView] = []
    var birdsarray:[UIImageView] = []
    var newbird = UIImageView(image: nil)
    var bird1ImageView = UIImageView(image: nil)
    var bird2ImageView = UIImageView(image: nil)
    var bird3ImageView = UIImageView(image: nil)
    var bird4ImageView = UIImageView(image: nil)
    var bird5ImageView = UIImageView(image: nil)
    var score: String?
    var number = 0
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
    func addbird1(){
    let number = Int.random(in: 1 ... 6)
    if number == 1{
    bird1ImageView.image = UIImage(named: "bird1.png")}
    if number == 2{
    bird1ImageView.image = UIImage(named: "bird2.png")}
    if number == 3{
    bird1ImageView.image = UIImage(named: "bird3.png")}
    if number == 4{
    bird1ImageView.image = UIImage(named: "bird4.png")}
    if number == 5{
    bird1ImageView.image = UIImage(named: "bird5.png")}
    if number == 6{
    bird1ImageView.image = UIImage(named: "bird6.png")}
    //Assign the size and position of the image view
           bird1ImageView.frame = CGRect(x: W - H/5 - 20, y: 0, width: H/5, height: H/5)
                //Add the image view to the main view
           self.view.addSubview(bird1ImageView)
        //birdsarray.append(bird1ImageView)
    }
    func addbird2(){
    let number = Int.random(in: 1 ... 6)
    if number == 1{
    bird2ImageView.image = UIImage(named: "bird1.png")}
    if number == 2{
    bird2ImageView.image = UIImage(named: "bird2.png")}
    if number == 3{
    bird2ImageView.image = UIImage(named: "bird3.png")}
    if number == 4{
    bird2ImageView.image = UIImage(named: "bird4.png")}
    if number == 5{
    bird2ImageView.image = UIImage(named: "bird5.png")}
    if number == 6{
    bird2ImageView.image = UIImage(named: "bird6.png")}
    //Assign the size and position of the image view
           bird2ImageView.frame = CGRect(x: W - H/5 - 20, y: H / 5, width: H/5, height: H/5)
                //Add the image view to the main view
           self.view.addSubview(bird2ImageView)
        //birdsarray.append(bird2ImageView)
    }
    
    func addbird3(){
    let number = Int.random(in: 1 ... 6)
    if number == 1{
    bird3ImageView.image = UIImage(named: "bird1.png")}
    if number == 2{
    bird3ImageView.image = UIImage(named: "bird2.png")}
    if number == 3{
    bird3ImageView.image = UIImage(named: "bird3.png")}
    if number == 4{
    bird3ImageView.image = UIImage(named: "bird4.png")}
    if number == 5{
    bird3ImageView.image = UIImage(named: "bird5.png")}
    if number == 6{
    bird3ImageView.image = UIImage(named: "bird6.png")}
    //Assign the size and position of the image view
           bird3ImageView.frame = CGRect(x: W - H/5 - 20, y: H*2/5 , width: H/5, height: H/5)
                //Add the image view to the main view
           self.view.addSubview(bird3ImageView)
        //birdsarray.append(bird3ImageView)
    }
    func addbird4(){
    let number = Int.random(in: 1 ... 6)
    if number == 1{
    bird4ImageView.image = UIImage(named: "bird1.png")}
    if number == 2{
    bird4ImageView.image = UIImage(named: "bird2.png")}
    if number == 3{
    bird4ImageView.image = UIImage(named: "bird3.png")}
    if number == 4{
    bird4ImageView.image = UIImage(named: "bird4.png")}
    if number == 5{
    bird4ImageView.image = UIImage(named: "bird5.png")}
    if number == 6{
    bird4ImageView.image = UIImage(named: "bird6.png")}
    //Assign the size and position of the image view
           bird4ImageView.frame = CGRect(x: W - H/5 - 20, y:H*3/5, width: H/5, height: H/5)
                //Add the image view to the main view
           self.view.addSubview(bird4ImageView)
        //birdsarray.append(bird4ImageView)
    }
    func addbird5(){
    let number = Int.random(in: 1 ... 6)
    if number == 1{
    bird5ImageView.image = UIImage(named: "bird1.png")}
    if number == 2{
    bird5ImageView.image = UIImage(named: "bird2.png")}
    if number == 3{
    bird5ImageView.image = UIImage(named: "bird3.png")}
    if number == 4{
    bird5ImageView.image = UIImage(named: "bird4.png")}
    if number == 5{
    bird5ImageView.image = UIImage(named: "bird5.png")}
    if number == 6{
    bird5ImageView.image = UIImage(named: "bird6.png")}
    //Assign the size and position of the image view
           bird5ImageView.frame = CGRect(x: W - H/5 - 20, y: H*4/5, width: H/5, height: H/5)
                //Add the image view to the main view
           self.view.addSubview(bird5ImageView)
        //birdsarray.append(bird5ImageView)
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
        //dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
            //dynamicItemBehavior = UIDynamicItemBehavior(items: ballsarray)
            //dynamicAnimator.addBehavior(dynamicItemBehavior)
                         
            //Add one item at a time
            dynamicItemBehavior.addItem(ballImageView)
            
            dynamicItemBehavior.addLinearVelocity(CGPoint(x: angleX, y: angleY), for: ballImageView)
            
           collisionBehavior = UICollisionBehavior(items: ballsarray)
            collisionBehavior.setTranslatesReferenceBoundsIntoBoundary(with: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: -99999))
            
            // set barrier
            //collisionBehavior.addBoundary(withIdentifier: "leftBoundary" as NSCopying, from: CGPoint(x: W*2/5,y: H/3), to: CGPoint(x: W*2/5, y: H*2/3))
            //collisionBehavior.addBoundary(withIdentifier: "rightBoundary" as NSCopying, from: CGPoint(x: W*3/5,y: H/3), to: CGPoint(x: W*3/5, y: H*2/3))
            //collisionBehavior.addBoundary(withIdentifier: "upperBoundary" as NSCopying, from: CGPoint(x: W*2/5,y: H/3), to: CGPoint(x: W*3/5,y: H/3))
            //collisionBehavior.addBoundary(withIdentifier: "lowerBoundary" as NSCopying, from: CGPoint(x: W*2/5,y: H*2/3), to: CGPoint(x: W*3/5,y: H*2/3))
            dynamicAnimator.addBehavior(collisionBehavior)
        
         // remove birds after collision and and recreate them randomly---------------
           
            
        self.collisionBehavior.action = {
        for bird in self.birdsarray {
        
            if (bird == self.bird1ImageView){
                if ballImageView.frame.intersects(bird.frame){
                    bird.removeFromSuperview()
                    // self.birdsarray.remove(at: 0)
        let when = DispatchTime.now() + 1
        DispatchQueue.main.asyncAfter(deadline: when) {
            
           // self.view.addSubview(bird)
            self.addbird1()

    }}}
            
            
            //"bird " + String(Int(number))
            
            
        if (bird == self.bird2ImageView){
            if ballImageView.frame.intersects(bird.frame){
            bird.removeFromSuperview()
            // self.birdsarray.remove(at: 1)
            let when = DispatchTime.now() + 1
            DispatchQueue.main.asyncAfter(deadline: when) {
            self.addbird2()
               
    }}}
    if (bird == self.bird3ImageView){
            if ballImageView.frame.intersects(bird.frame){
            bird.removeFromSuperview()
               // self.birdsarray.remove(at: 2)
            let when = DispatchTime.now() + 1
            DispatchQueue.main.asyncAfter(deadline: when) {
            self.addbird3()
                
    }}}
    if (bird == self.bird4ImageView){
            if ballImageView.frame.intersects(bird.frame){
            bird.removeFromSuperview()
               // self.birdsarray.remove(at: 3)
            let when = DispatchTime.now() + 1
            DispatchQueue.main.asyncAfter(deadline: when) {
            self.addbird4()
                
    }}}
    if (bird == self.bird5ImageView){
            if ballImageView.frame.intersects(bird.frame){
            bird.removeFromSuperview()
               // self.birdsarray.remove(at: 4)
            let when = DispatchTime.now() + 1
            DispatchQueue.main.asyncAfter(deadline: when) {
            self.addbird5()
                
    }}}
}}}
       //score keeping
   
    
    @IBOutlet weak var aimImageView: DraggedImageView!

    //@IBOutlet weak var Score: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let barrierView = UIImageView(frame: CGRect(x: W/2 - W/10, y: H/2 - H/6, width: W/5, height: H/3))
        barrierView.backgroundColor = UIColor.red
        view.addSubview(barrierView)
        dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
        dynamicItemBehavior = UIDynamicItemBehavior(items: ballsarray)
        dynamicAnimator.addBehavior(dynamicItemBehavior)
        
        // add birds------------------------------------------------------------
        //("bird " + String(Int(number)))
        
        //addbird1()
        bird1ImageView.image = UIImage(named: "bird1.png")
        bird1ImageView.frame = CGRect(x: W - H/5 - 20, y: 0, width: H/5, height: H/5)
        self.view.addSubview(bird1ImageView)
        birdsarray.append(bird1ImageView)
        
       
        bird2ImageView.image = UIImage(named: "bird2.png")
        bird2ImageView.frame = CGRect(x: W - H/5 - 20, y: H/5, width: H/5, height: H/5)
        self.view.addSubview(bird2ImageView)
        birdsarray.append(bird2ImageView)
        
        bird3ImageView.image = UIImage(named: "bird3.png")
        bird3ImageView.frame = CGRect(x: W - H/5 - 20, y: H*2/5, width: H/5, height: H/5)
        self.view.addSubview(bird3ImageView)
        birdsarray.append(bird3ImageView)
        
        bird4ImageView.image = UIImage(named: "bird4.png")
        bird4ImageView.frame = CGRect(x: W - H/5 - 20, y: H*3/5, width: H/5, height: H/5)
        self.view.addSubview(bird4ImageView)
        birdsarray.append(bird4ImageView)
        
        bird5ImageView.image = UIImage(named: "bird5.png")
        bird5ImageView.frame = CGRect(x: W - H/5 - 20, y: H*4/5, width: H/5, height: H/5)
        self.view.addSubview(bird5ImageView)
        birdsarray.append(bird5ImageView)
        
              
        

        aimImageView.myDelegate = self
        
       //Screen-Fit
        aimImageView.center = CGPoint(x: aimImageView.bounds.midX + 50, y: UIScreen.main.bounds.height / 2)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }


}

