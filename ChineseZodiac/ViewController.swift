//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by abel on 15/8/28.
//  Copyright (c) 2015年 abel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearOfBirth: UITextField!
    @IBOutlet weak var image: UIImageView!
    
    let offset = 4//2008为鼠年，老鼠图片命名为0，2008%12=4
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        yearOfBirth.resignFirstResponder()//点击背景，数字键盘退出
    }
    @IBAction func okTapped(sender: AnyObject) {
        yearOfBirth.resignFirstResponder()//输入框失去焦点时，数字键盘退出
        
        if let year = yearOfBirth.text.toInt(){
            var imageNumber = (year - offset) % 12
            image.image = UIImage(named: String(imageNumber))
        }
        else{
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

