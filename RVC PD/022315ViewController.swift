//
//  022315ViewController.swift
//  RVC PD
//
//  Created by Todd Johnson on 3/18/15.
//  Copyright (c) 2015 Rock Valley College. All rights reserved.
//

import UIKit

class _22315ViewController: UIViewController {
    
    
    @IBAction func btnBack(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(false, completion: nil)
    }
    

    @IBOutlet weak var webview: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LoadLocalPDF()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func LoadLocalPDF()
    {
        webview.loadLocalPDF("022315-022515")
        //webview.loadExternalPDF("URL TO PDF")
        
        /*
        // MARK: - Navigation
        
        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        }
        */
        
    }
}

