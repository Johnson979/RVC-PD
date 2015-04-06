//
//  FirstViewController.swift
//  RVC PD
//
//  Created by Todd Johnson on 2/26/15.
//  Copyright (c) 2015 Rock Valley College. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    
    @IBAction func btnTrythis(sender: UIButton) {
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

