//
//  CitrixViewController.swift
//  NumGallery
//
//  Created by Fashion on 16/7/9.
//  Copyright © 2016年 catface. All rights reserved.
//

import UIKit

// 分享
import Social

class CitrixViewController: UIViewController {
   
    
    @IBOutlet weak var citrixImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
     
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }
    
    
    @IBAction func fff(sender: AnyObject) {
        
        var controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        
        
        controller.setInitialText("play with meFFF")
        controller.addImage(citrixImg.image)
        
        self.presentViewController(controller, animated: true, completion: nil)

        
    }
    
    
    @IBAction func ggg(sender: AnyObject) {
        
        
        var controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        
        
        controller.setInitialText("play with meGGG")
        controller.addImage(citrixImg.image)
        
        self.presentViewController(controller, animated: true, completion: nil)

    }
    
    
    @IBAction func hhh(sender: AnyObject) {
        
        
        var controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo)
        
        
        controller.setInitialText("play with meHHH")
        controller.addImage(citrixImg.image)
        
        self.presentViewController(controller, animated: true, completion: nil)

    }
    
    
    
}
