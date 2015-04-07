//
//  BitFormViewController.swift
//  RVC PD
//
//  Created by Todd Johnson on 4/7/15.
//  Copyright (c) 2015 Rock Valley College. All rights reserved.
//

import UIKit

class BitFormViewController: UIViewController {
    
    
    
    @IBAction func btnBack(sender: UIBarButtonItem) {
        webview.goBack()
    }
    
    
    @IBOutlet weak var webview: UIWebView!
  

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        loadwebview()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func loadwebview()
    {
        let url = NSURL(string: "https://publicdocs.maxient.com/incidentreport.php?RockValleyCollege")
        let request = NSURLRequest(URL: url!)
        webview.scalesPageToFit = true
        webview.loadRequest(request)
        
    }}
