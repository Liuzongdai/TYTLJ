//
//  DepartmentTableViewController.swift
//  TLJ
//
//  Created by 刘宗岱 on 15/11/30.
//  Copyright © 2015年 蓝之青. All rights reserved.
//

import UIKit

class DepartmentTableViewController: UITableViewController {

//    var index = 0
    var departments = ["太原铁路局职能管理机构","太原铁路局限额外机构","太原铁路局附属机构","太原铁路局派出机构","太原铁路局学协会","太原铁路局运输站段","太原铁路局铁路公安局、检察院、法院","太原铁路局非运输企业","太原铁路局其他单位","管理员单位","部合资公司","太原铁路局运输辅助单位"]
    
    @IBOutlet weak var cell1: UITableViewCell!
    
    @IBOutlet weak var cell2: UITableViewCell!
    
    @IBOutlet weak var cell3: UITableViewCell!
    
    @IBOutlet weak var cell4: UITableViewCell!
    
    @IBOutlet weak var cell5: UITableViewCell!
    
    
    @IBOutlet weak var cell6: UITableViewCell!
    
    
    @IBOutlet weak var cell7: UITableViewCell!
    
    @IBOutlet weak var cell8: UITableViewCell!
    
    
    @IBOutlet weak var cell9: UITableViewCell!
    
    
    @IBOutlet weak var cell10: UITableViewCell!
    
    
    @IBOutlet weak var cell11: UITableViewCell!
    
    @IBOutlet weak var cell12: UITableViewCell!
    override func viewDidLoad() {
        super.viewDidLoad()

        cell1.backgroundColor = UIColor.clearColor()
        cell2.backgroundColor = UIColor.clearColor()
        cell3.backgroundColor = UIColor.clearColor()
        cell4.backgroundColor = UIColor.clearColor()
        cell5.backgroundColor = UIColor.clearColor()
        cell6.backgroundColor = UIColor.clearColor()
        cell7.backgroundColor = UIColor.clearColor()
        cell8.backgroundColor = UIColor.clearColor()
        cell9.backgroundColor = UIColor.clearColor()
        cell10.backgroundColor = UIColor.clearColor()
        cell11.backgroundColor = UIColor.clearColor()
        cell12.backgroundColor = UIColor.clearColor()
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
        self.tableView.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        if(indexPath.row == 1 || indexPath.row == 9) {
            let vc = mainStoryboard.instantiateViewControllerWithIdentifier("staff") as! StaffTableViewController
            vc.department = departments[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
        }else if (indexPath.row != 0&&indexPath.row != 1&&indexPath.row != 9) {
            let vc = mainStoryboard.instantiateViewControllerWithIdentifier("other") as! OtherTableViewController
            vc.depart = departments[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = mainStoryboard.instantiateViewControllerWithIdentifier("staff") as! StaffTableViewController
//        let identifier = segue.identifier!
//        if(identifier == "ewai") {
//            vc.department = "太原铁路局限额外机构"
//        }else {
//            vc.department = "管理员单位"
//        }
//    }
    // MARK: - Table view data source

//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        return departments.count
//    }
//
//    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//
//    
//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCellWithIdentifier("cell")
//        var dtName = cell!.viewWithTag(101) as! UILabel
//        dtName.text = departments[index]
//        index++
//
//        
//        return cell!
//    }
    

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
