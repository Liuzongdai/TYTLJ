//
//  JYTableViewController.swift
//  TLJ
//
//  Created by 刘宗岱 on 15/12/2.
//  Copyright © 2015年 蓝之青. All rights reserved.
//

import UIKit

class JYTableViewController: UITableViewController {

    
    var depart = ["三晋计量行","大同地铁公司"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)

        let label = cell.viewWithTag(101) as! UILabel
        label.text = depart[indexPath.row]

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = mainStoryboard.instantiateViewControllerWithIdentifier("staff") as! StaffTableViewController
        vc.department = depart[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

    
}
