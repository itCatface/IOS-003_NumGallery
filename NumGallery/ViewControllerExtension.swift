//
//  ViewControllerExtension.swift
//  NumGallery
//
//  Created by Fashion on 16/7/8.
//  Copyright © 2016年 catface. All rights reserved.
//

import UIKit

extension ViewController: UIPickerViewDataSource {
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        
        // 栏目数量
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        // 该栏条目数量
        return nums.count
    }
}


extension ViewController: UIPickerViewDelegate {
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return nums[row]
        
    }
}
