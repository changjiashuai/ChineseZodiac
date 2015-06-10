//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by CJS on 15/6/10.
//  Copyright (c) 2015年 CJS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearOfBirth: UITextField!
    
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        yearOfBirth.resignFirstResponder()
    }

    @IBAction func okTapped(sender: AnyObject) {
        yearOfBirth.resignFirstResponder()
        if let year = yearOfBirth.text.toInt(){
            var imageName = (year-4)%12
            image.image = UIImage(named: String(imageName))
        }else{
            //null
        }
    }
}

