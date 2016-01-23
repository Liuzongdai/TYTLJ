//
//  ViewController.swift
//  TLJ
//
//  Created by 刘宗岱 on 15/11/30.
//  Copyright © 2015年 蓝之青. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var passWord: UITextField!
    
    @IBOutlet weak var locationSymbol: UITextField!
    
    @IBOutlet weak var login: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.locationSymbol.hidden = true

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func login(sender: AnyObject) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        var vc = mainStoryboard.instantiateViewControllerWithIdentifier("nav") as! UISplitViewController
        
//        if(check()) {
//            self.presentViewController(vc, animated: true, completion: nil)
//
//        }else {
//            
//        }
        self.presentViewController(vc, animated: true, completion: nil)

        
        
    }
    
    func check()->Bool {
        
        let setting = NSUserDefaults.standardUserDefaults()
        var username = setting.valueForKey("username") as! String
        var password = setting.valueForKey("password") as! String
            
        if(userName.text == username && passWord.text == password){
            return true
        }else{
            return false
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        userName.resignFirstResponder()
        passWord.resignFirstResponder()
    }

}

