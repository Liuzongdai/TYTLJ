//
//  FuncTableViewController.swift
//  TLJ
//
//  Created by 刘宗岱 on 15/11/30.
//  Copyright © 2015年 蓝之青. All rights reserved.
//

import UIKit
import CoreData

class FuncTableViewController: UITableViewController {

    let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    @IBOutlet weak var cell1: UITableViewCell!
    
    @IBOutlet weak var cell2: UITableViewCell!
    
    @IBOutlet weak var cell3: UITableViewCell!
    
    @IBOutlet weak var cell4: UITableViewCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
        self.view.backgroundColor = UIColor.blueColor()
        self.tableView.backgroundColor = UIColor(red: 53/255, green: 148/255, blue: 175/255, alpha: 1)
        cell1.backgroundColor = UIColor.clearColor()
        cell2.backgroundColor = UIColor.clearColor()
        cell3.backgroundColor = UIColor.clearColor()
        cell4.backgroundColor = UIColor.clearColor()

        let a = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        a.backgroundColor = UIColor.blackColor()
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 53/255, green: 148/255, blue: 175/255, alpha: 1)
        self.navigationController?.navigationBar.addSubview(a)
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

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if(indexPath.row == 3) {
            print("here")
            let path: String = NSBundle.mainBundle().pathForResource("ryxx", ofType: "json")!
            let nsUrl = NSURL(fileURLWithPath: path)
            let data: NSData = NSData(contentsOfURL: nsUrl)!
            
           
            var dic:NSDictionary
//                       let home = NSHomeDirectory() as NSString;
//           
//            let docPath = home.stringByAppendingPathComponent("Documents") as NSString;
//            let filePath = docPath.stringByAppendingPathComponent("ryxx.json");
//            print(filePath)
//            let url = NSURL(fileURLWithPath: filePath)
//            let data = NSData(contentsOfURL: url)
            
            

            
            
            do  {
                dic = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers) as! NSDictionary
                let staffArray = dic["rows"] as! NSArray
                
                print(staffArray.count)
                
                
                for staff in staffArray {
                    let row =  NSEntityDescription.insertNewObjectForEntityForName("RENYUAN", inManagedObjectContext: context)
                    
                    insertData(staff["RYBM"], key: "rybm",row: row)
                    insertData(staff["SFZH"], key: "sfzh",row: row)
                    insertData(staff["DWBSM"], key: "dwbsm",row: row)
                    insertData(staff["DWMC"], key: "dwmc",row: row)
                    insertData(staff["XSBMMC"], key: "xsbmmc",row: row)
                    insertData(staff["XM"], key: "xm",row: row)
                    insertData(staff["CJGZRQ"], key: "cjgzrq",row: row)
                    insertData(staff["RDSJ"], key: "rdsj",row: row)
                    insertData(staff["XDZZWRQ"], key: "xdzzwrq",row: row)
                    insertData(staff["XJSZWRQ"], key: "xjszwrq",row: row)
                    insertData(staff["ZGMCQDRQ"], key: "zgmcqdrq",row: row)
                    insertData(staff["XB"], key: "xb",row: row)
                    insertData(staff["MZ"], key: "mz",row: row)
                    insertData(staff["ZWMC"], key: "zwmc",row: row)
                    insertData(staff["XJSZWMC"], key: "xjszwmc",row: row)
                    insertData(staff["ZGBM"], key: "zgbm",row: row)
                    insertData(staff["ZGMC"], key: "zgmc",row: row)
                    insertData(staff["WHCD"], key: "whcd",row: row)
                    insertData(staff["JG"], key: "jg",row: row)
                    insertData(staff["CSD"], key: "csd",row: row)
                    insertData(staff["JKZK"], key: "jkzk",row: row)
                    let img = UIImage(named:"headimg")
                    let data = UIImagePNGRepresentation(img!)
                    insertData(data, key: "img", row: row)
                    do {
                       try context.save()
                       print("save")
                    }catch {
                        print(error)
                    }
                    
                }
                
                
                
            }
            catch {
                print(error)
            }
            
            
            
        }
        
        
        
    }

    func insertData(value:AnyObject?,key:String,row:NSManagedObject) {
        if let v = value {
            
            if !(v is NSNull) {
                row.setValue(v, forKey: key)
            }
        }
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
