//
//  GalleryViewController.swift
//  NumGallery
//
//  Created by Fashion on 16/7/8.
//  Copyright © 2016年 catface. All rights reserved.
//

import UIKit

// 分享
import Social

class GalleryViewController: UIViewController {
    
    var imgName: String!
    
    @IBOutlet weak var numImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let name = imgName {
            
            numImg.image = UIImage(named: imgName)
            
            
            switch name {
            case "1":
                navigationItem.title = "num1"
            case "2":
                navigationItem.title = "num2"
            case "3":
                navigationItem.title = "num3"
            case "4":
                navigationItem.title = "num4"
            case "6":
                navigationItem.title = "num6"
            default:
                break
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btShare(sender: AnyObject) {
    
        var controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo)
    
        
        controller.setInitialText("play with me")
        controller.addImage(numImg.image)
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
}


