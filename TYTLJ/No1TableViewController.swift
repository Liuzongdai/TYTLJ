//
//  No1TableViewController.swift
//  TLJ
//
//  Created by 刘宗岱 on 15/12/1.
//  Copyright © 2015年 蓝之青. All rights reserved.
//

import UIKit

class No1TableViewController: UITableViewController {

    var A = ["安全监察室"]
    var B = ["办公室(党委办公室)","保卫处"]
    var C = ["财务处","车辆处"]
    var D = ["党政宣传部(文化企业处)","电务处","调度所"]
    var G = ["工会","工务处","供电处"]
    var H = ["货运处"]
    var J = ["机关党委","机务处","计划统计处","纪委(监察处)","建设管理处","机车车辆验收室","建设系统党工委","经营开发处"]
    var K = ["客运处"]
    var L = ["劳动和卫生处","离退休管理处"]
    var Q = ["企业管理和法律事务处"]
    var R = ["人防战备处(人民武装部)","人事处(党委组织部)"]
    var S = ["审计处","收入稽查处","社会保险管理处"]
    var T = ["土地房产管理处","团委"]
    var W = ["物资管理处"]
    var X = ["信息化处"]
    var Y = ["运输处"]
    var Z = ["职工教育处","总工程师室"]
    
    var depart = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
         depart = [A,B,C,D,G,H,J,K,L,Q,R,S,T,W,X,Y,Z]
         self.tableView.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
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
        return 7
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch section {
        case 0:
            return A.count
        case 1:
            return B.count
        case 2:
            return C.count
        case 3:
            return D.count
        case 4:
            return G.count
        case 5:
            return H.count
        case 6:
            return J.count
        case 7:
            return K.count
        case 8:
            return L.count
        case 9:
            return Q.count
        case 10:
            return R.count
        case 11:
            return S.count
        case 12:
            return T.count
        case 13:
            return W.count
        case 14:
            return X.count
        case 15:
            return Y.count
        case 16:
            return Z.count
        default:
            return 1
        }
        
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        let label = cell.viewWithTag(101) as! UILabel
        switch indexPath.section {
        case 0:
            label.text = A[indexPath.row]
        case 1:
            label.text = B[indexPath.row]

        case 2:
            label.text = C[indexPath.row]

        case 3:
            label.text = D[indexPath.row]

        case 4:
            label.text = G[indexPath.row]

        case 5:
            label.text = H[indexPath.row]

        case 6:
            label.text = J[indexPath.row]
        case 7:
            label.text = K[indexPath.row]

        case 8:
            label.text = L[indexPath.row]

        case 9:
            label.text = Q[indexPath.row]

        case 10:
            label.text = R[indexPath.row]

        case 11:
            label.text = S[indexPath.row]

        case 12:
            label.text = T[indexPath.row]

        case 13:
            label.text = W[indexPath.row]

        case 14:
            label.text = X[indexPath.row]

        case 15:
            label.text = Y[indexPath.row]

        case 16:
        label.text = Z[indexPath.row]

        default:
            label.text = A[indexPath.row]

        }

        cell.backgroundColor = UIColor.clearColor()
        return cell
    }

    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 78
    }
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)

        if(indexPath.section == 6 && indexPath.row == 7) {
            
            let vc = mainStoryboard.instantiateViewControllerWithIdentifier("No1_") as! UITableViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }else {
             let vc = mainStoryboard.instantiateViewControllerWithIdentifier("staff") as! StaffTableViewController
            let d = depart[indexPath.section] as! NSArray
            vc.department = d[indexPath.row] as! String
            self.navigationController?.pushViewController(vc, animated: true)
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
