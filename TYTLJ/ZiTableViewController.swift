
//
//  ZiTableViewController.swift
//  TLJ
//
//  Created by 刘宗岱 on 15/12/2.
//  Copyright © 2015年 蓝之青. All rights reserved.
//

import UIKit

class ZiTableViewController: UITableViewController {

    var depart:String!
    var departments = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        1太原资金结算所
//        2大秦公司铁路资金结算所
        if(depart == "太原铁路资金结算所") {
            departments = ["太原资金结算所","大秦公司铁路资金结算所"]
            
        }else if (depart == "大同新通实业有限责任公司") {
//            1大同铁路通宝实业有限责任公司
//            2山西通宇兴科贸有限责任公司
//            33秦皇岛通秦商贸有限公司
            departments = ["大同铁路通宝实业有限责任公司","山西通宇兴科贸有限责任公司","秦皇岛通秦商贸有限公司"]
        }else if (depart == "大同铁联实业有限责任公司") {
//            1减少人员
            departments = ["减少人员"]
        }else if (depart == "太原铁路房建段") {
//            1临汾铁路房建公司
//            2临汾铁路房建公司
//            3大同铁路房建公司
            departments = ["临汾铁路房建公司","太原铁路房建公司","大同铁路房建公司"]
        }
        
        
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
        return departments.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        let label = cell.viewWithTag(101) as! UILabel
        label.text = departments[indexPath.row] as? String
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let staff = mainStoryboard.instantiateViewControllerWithIdentifier("staff") as! StaffTableViewController
        staff.department = departments[indexPath.row] as! String
        self.navigationController?.pushViewController(staff, animated: true)
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
