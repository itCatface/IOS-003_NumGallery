//
//  ViewController.swift
//  NumGallery
//
//  Created by Fashion on 16/7/8.
//  Copyright © 2016年 catface. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numPicker: UIPickerView!
    
    let nums = ["num1", "num2", "num3", "num4", "num5"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        numPicker.dataSource = self
        numPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // segue 跳转前调用
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        
        
        
        if segue.identifier == "GoToGallery" {
            
            
            let vc = segue.destinationViewController as! GalleryViewController
            
            
            switch numPicker.selectedRowInComponent(0) {
            case 0:
                vc.imgName = "1"
            case 1:
                vc.imgName = "2"
            case 2:
                vc.imgName = "3"
            case 3:
                vc.imgName = "4"
            case 4:
                vc.imgName = "5"
                
            default:
                vc.imgName = nil
                
            }
            
            
            
        }
        
    }
    
    
    // 第二个页面中的返回按钮处理前需要在这写上这个方法！！！
    // 可以读取该页面中的属性
    @IBAction func close(segue: UIStoryboardSegue) {
        print("close")
    }

}

