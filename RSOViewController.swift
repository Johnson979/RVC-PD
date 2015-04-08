//
//  RSOViewController.swift
//  RVC PD
//
//  Created by Todd Johnson on 3/18/15.
//  Copyright (c) 2015 Rock Valley College. All rights reserved.
//

import UIKit

class RSOViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var rsoWeb: UIWebView!
    
    
    @IBOutlet weak var activity: UIActivityIndicatorView!
    
    @IBAction func btnBack(sender: UIBarButtonItem) {
        rsoWeb.goBack()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        rsoWeb.delegate=self

        // Do any additional setup after loading the view.
        loadwebview()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func webViewDidStartLoad(webView: UIWebView){
        
        activity.hidden = false
        activity.startAnimating()
        
    }
    
    func webViewDidFinishLoad(webView: UIWebView)
    {
        
        activity.hidden = true
        activity.stopAnimating()
        
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
        let url = NSURL(string: "https://www.dropbox.com/sh/8r034i5rhwjek3r/AACUeTxIHFbFL1Ae3Mfi7h9Da?dl=0")
        let request = NSURLRequest(URL: url!)
        rsoWeb.scalesPageToFit = true
        rsoWeb.loadRequest(request)
        
    }
}
