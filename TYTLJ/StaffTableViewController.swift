//
//  StaffTableViewController.swift
//  TLJ
//
//  Created by 刘宗岱 on 15/12/2.
//  Copyright © 2015年 蓝之青. All rights reserved.
//

import UIKit
import CoreData

class StaffTableViewController: UITableViewController {

    var staff:[Staff] = []
    
    var department:String!
    var context:NSManagedObjectContext!
    var result:[AnyObject] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
        
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
        print(department)
        context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        let f = NSFetchRequest(entityName: "RENYUAN")
        f.predicate = NSPredicate(format:"dwmc LIKE '\(department)'")
        
        //f.predicate = NSPredicate(format:"timu CONTAINS '\(searchString)'")
        //result = context.executeFetchRequest(f)
        do {
           
           result = try context.executeFetchRequest(f)
            for r in result {
                let s = Staff(dic: r)
                staff.append(s)
            }
        } catch {
            
        }
        print(staff.count)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return staff.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)

        let imgView = cell.viewWithTag(102) as! UIImageView
        let label = cell.viewWithTag(101) as! UILabel
        imgView.layer.masksToBounds = true
        imgView.layer.cornerRadius = 25.0
        imgView.image = staff[indexPath.row].headimg
        label.text = staff[indexPath.row].xm
        cell.backgroundColor = UIColor.clearColor()
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60
    }
    

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        STAFF = staff[indexPath.row]
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
