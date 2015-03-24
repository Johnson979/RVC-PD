//
//  ThirdViewController.swift
//  RVC PD
//
//  Created by Todd Johnson on 2/26/15.
//  Copyright (c) 2015 Rock Valley College. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    
    @IBAction func btnNonEmergency(sender: UIButton) {
        if let url = NSURL(string: "tel://8159214370") {
            UIApplication.sharedApplication().openURL(url)
        }    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

