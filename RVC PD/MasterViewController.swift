//
//  MasterViewController.swift
//  RVC PD
//
//  Created by Todd Johnson on 3/3/15.
//  Copyright (c) 2015 Rock Valley College. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {
    
    var detailViewController: DetailViewController? = nil
    //var objects = NSMutableArray()
    var listArray=NSMutableArray()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.clearsSelectionOnViewWillAppear = false
        self.preferredContentSize = CGSize(width: 320.0, height: 600.0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.navigationItem.leftBarButtonItem = self.editButtonItem()
        
        listArray=["Joshua Wahmhoff","Jonathan Ulrich","William Morris","Robert Patterson","Matthew Cross","Michael Desario","Jonathan Burhans"]
        
        //let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "insertNewObject:")
        //self.navigationItem.rightBarButtonItem = addButton
        
        title="RSO Spring 2015"
        
        let controllers = self.splitViewController!.viewControllers
        self.detailViewController = controllers[controllers.count-1].topViewController as? DetailViewController
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //func insertNewObject(sender: AnyObject) {
    //objects.insertObject(NSDate(), atIndex: 0)
    //let indexPath = NSIndexPath(forRow: 0, inSection: 0)
    //self.tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
    //}
    
    // MARK: - Segues
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow() {
                let object = listArray[indexPath.row] as NSString
                let controller = (segue.destinationViewController as UINavigationController).topViewController as DetailViewController
                controller.detailItem = object
                controller.productName=object
                controller.productURL=object+".pdf"
                controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
                controller.navigationItem.leftItemsSupplementBackButton = true
                self.splitViewController?.toggleMasterView()
            }
        }
    }
    
    // MARK: - Table View
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return objects.count
        return listArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        let object = listArray[indexPath.row] as NSString
        cell.textLabel!.text = object.description
        return cell
    }
    
    //override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return false if you do not want the specified item to be editable.
    //  return true
    //}
    
    //override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    //  if editingStyle == .Delete {
    //    objects.removeObjectAtIndex(indexPath.row)
    //  tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    //} else if editingStyle == .Insert {
    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    // }
    //}
    
    
}
extension UISplitViewController {
    func toggleMasterView() {
        let barButtonItem = self.displayModeButtonItem()
        UIApplication.sharedApplication().sendAction(barButtonItem.action, to: barButtonItem.target, from: nil, forEvent: nil)
    }
}
