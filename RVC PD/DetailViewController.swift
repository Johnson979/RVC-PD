//
//  DetailViewController.swift
//  RVC PD
//
//  Created by Todd Johnson on 3/3/15.
//  Copyright (c) 2015 Rock Valley College. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var productImageView: UIImageView!
    //@IBOutlet weak var detailDescriptionLabel: UILabel!
    
    
    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            //self.configureView()
        }
    }
    var productName: NSString? {
        didSet {
            
        }
    }
    
    
    var productURL: NSString? {
        didSet {
            // Update the view.
            // self.configureView()
        }
    }
    
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail: AnyObject = self.detailItem {
            productImageView.image = UIImage(named:productURL!)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        println("Product URL: \(productURL)")
        println("Product Name: \(productName)")
        if productName == nil
        {
            productImageView.image = UIImage(named:"index.jpg")
        }
        title = productName
        self.configureView()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


