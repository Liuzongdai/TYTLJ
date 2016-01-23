//
//  SelectViewController.swift
//  太铁人员系统
//
//  Created by 刘宗岱 on 15/12/5.
//  Copyright © 2015年 蓝之青. All rights reserved.
//

import UIKit

class SelectViewController: UIViewController {

    var screenWidth = UIScreen.mainScreen().applicationFrame.width
    var screenHight = UIScreen.mainScreen().applicationFrame.height
    
    var departView:UIView!
    var sexView:UIView!
    var ageView:UIView!
    var politicsView:UIView!
    var eduView:UIView!
    var classView:UIView!
    var mangerView:UIView!

    var y:CGFloat = 60.0
    var tag = 101
    var department:[UIButton] = []
    
    let departTitle = ["路局领导","局机关单位","车务系统","机务系统","供电系统","公务系统","电务系统","车辆系统","运输辅助","非运输","指挥及筹备","合资及其他"]
    let sexTitle = ["男","女"]
    let ageTitle = ["20-30","31-35","36-40","41-45","46-50","56+"]
    let politicsTitle = ["党员","非党员"]
    let eduTitle = ["研究生","大学本科","大学专科","中专"]
    let classTitle = ["正局","副局","正处","副处","正科"]
    let managerTitle = ["正高级","副高级","中级","初级","无"]
    
    
    var departSelected = [false,false,false,false,false,false,false,false,false,false,false,false]
    var sexSelected = [false,false]
    var ageSelected = [false,false,false,false,false,false]
    var politicsSelected = [false,false]
    var eduSelected = [false,false,false,false]
    var classSelected = [false,false,false,false,false]
    var mangerSelected = [false,false,false,false,false]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor =  UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)

        loadUI()

                // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func loadDepartments() {
        var i = 0
        var j:CGFloat = 1.0
        var k = 0
        departView = UIView(frame:CGRect(x: 0, y: y, width: screenWidth, height: screenHight*3/18))
        departView.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
        y += departView.frame.height
        self.view.addSubview(departView)
        let title:UILabel!
        if(screenHight > screenWidth) {
            title = UILabel((frame: CGRect(x: screenWidth/28, y: screenHight*0.1/18, width: 100, height: screenHight/21)))
        }else {
            title = UILabel((frame: CGRect(x: screenWidth/32, y: screenHight*0.1/18, width: 100, height: screenHight*0.8/18)))
        }
//        title.backgroundColor = UIColor.blueColor()
        title.text = "单位"
        departView.addSubview(title)
        var x:CGFloat = 0.0
        var index = 0
        for(j=1;j<=2;j++) {
            x = 0
            k++
            for(i=0;i<6;i++) {
                var b:UIButton!
                if(screenHight > screenWidth) {
                    x += screenWidth/28
                    b = UIButton(type: UIButtonType.Custom)
                    b.frame = CGRect(x: x, y: screenHight*(j+0.1)/18, width: screenWidth/8, height: screenHight/21)
                }else {
                    x += screenWidth/32
                    b = UIButton(type: UIButtonType.Custom)
                    b.frame = CGRect(x: x, y: screenHight*(j+0.1)/18, width: screenWidth/13, height: screenHight*0.8/18)
                    
                }
                x += b.frame.width
                b.setTitle(departTitle[index], forState: UIControlState.Normal)
                b.titleLabel?.font = UIFont(name: "Arial", size: 15)

                if(departSelected[index]) {
                    b.backgroundColor = UIColor(red: 28/255, green: 28/255, blue: 28/255, alpha: 1)
                    b.setTitleColor(UIColor(red: 75/255, green: 228/255, blue: 247/255, alpha: 1), forState: UIControlState.Normal)
                }else {
                    b.backgroundColor = UIColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 1)
                    b.setTitleColor(UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1), forState: UIControlState.Normal)
                }
                index++

                b.layer.cornerRadius = 5.0
                b.tag = tag
                tag++
                
                b.addTarget(self, action: "selected:", forControlEvents: UIControlEvents.TouchUpInside)
                
                departView.addSubview(b)
            }

        }
    }
    
    func loadSex() {
        sexView = UIView(frame:CGRect(x: 0, y: y, width: screenWidth, height: screenHight*2/18))
        sexView.backgroundColor =  UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
        y += sexView.frame.height
        self.view.addSubview(sexView)
        let title:UILabel!
        if(screenHight > screenWidth) {
            title = UILabel((frame: CGRect(x: screenWidth/28, y: screenHight*0.1/18, width: 100, height: screenHight/21)))
        }else {
            title = UILabel((frame: CGRect(x: screenWidth/32, y: screenHight*0.1/18, width: 100, height: screenHight*0.8/18)))
        }
        title.text = "性别"
        sexView.addSubview(title)
        var x:CGFloat = 0.0
        var i = 0
        var index = 0
        for(i=0;i<2;i++) {
            var b:UIButton!
            if(screenHight > screenWidth) {
                x += screenWidth/28
                b = UIButton(type: UIButtonType.Custom)
                b.frame = CGRect(x: x, y: screenHight*1.1/18, width: screenWidth/8, height: screenHight/21)
            }else {
                x += screenWidth/32
                b = UIButton(type: UIButtonType.Custom)
                b.frame = CGRect(x: x, y: screenHight*1.1/18, width: screenWidth/13, height: screenHight*0.8/18)
                
            }
            x += b.frame.width
            
            
            
            b.setTitle(sexTitle[index], forState: UIControlState.Normal)
            b.titleLabel?.font = UIFont(name: "Arial", size: 15)
            if(sexSelected[index]) {
                b.backgroundColor = UIColor(red: 28/255, green: 28/255, blue: 28/255, alpha: 1)
                b.setTitleColor(UIColor(red: 75/255, green: 228/255, blue: 247/255, alpha: 1), forState: UIControlState.Normal)
            }else {
                b.backgroundColor = UIColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 1)
                b.setTitleColor(UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1), forState: UIControlState.Normal)
            }
            index++
            
            
            b.layer.cornerRadius = 5.0
            b.tag = tag
            tag++
            b.addTarget(self, action: "selected:", forControlEvents: UIControlEvents.TouchUpInside)

            sexView.addSubview(b)
        }
        

    }
    
    func loadAge() {
        ageView = UIView(frame:CGRect(x: 0, y: y, width: screenWidth, height: screenHight*2/18))
        ageView.backgroundColor =  UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
        y += sexView.frame.height
        self.view.addSubview(ageView)
        let title:UILabel!
        if(screenHight > screenWidth) {
            title = UILabel((frame: CGRect(x: screenWidth/28, y: screenHight*0.1/18, width: 100, height: screenHight/21)))
        }else {
            title = UILabel((frame: CGRect(x: screenWidth/32, y: screenHight*0.1/18, width: 100, height: screenHight*0.8/18)))
        }
        title.text = "年龄"
        ageView.addSubview(title)
        var x:CGFloat = 0.0
        var i = 0
        var index = 0
        for(i=0;i<6;i++) {
            var b:UIButton!
            if(screenHight > screenWidth) {
                x += screenWidth/28
                b = UIButton(type: UIButtonType.Custom)
                b.frame = CGRect(x: x, y: screenHight*1.1/18, width: screenWidth/8, height: screenHight/21)
            }else {
                x += screenWidth/32
                b = UIButton(type: UIButtonType.Custom)
                b.frame = CGRect(x: x, y: screenHight*1.1/18, width: screenWidth/13, height: screenHight*0.8/18)
                
            }
            x += b.frame.width
            b.setTitle(ageTitle[index], forState: UIControlState.Normal)
            b.titleLabel?.font = UIFont(name: "Arial", size: 15)
            if(ageSelected[index]) {
                b.backgroundColor = UIColor(red: 28/255, green: 28/255, blue: 28/255, alpha: 1)
                b.setTitleColor(UIColor(red: 75/255, green: 228/255, blue: 247/255, alpha: 1), forState: UIControlState.Normal)
            }else {
                b.backgroundColor = UIColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 1)
                b.setTitleColor(UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1), forState: UIControlState.Normal)
            }
            index++
            b.layer.cornerRadius = 5.0
            b.tag = tag
            tag++
            b.addTarget(self, action: "selected:", forControlEvents: UIControlEvents.TouchUpInside)
            
            ageView.addSubview(b)
        }
        

        
    }

    func loadPolitics() {
        politicsView = UIView(frame:CGRect(x: 0, y: y, width: screenWidth, height: screenHight*2/18))
        politicsView.backgroundColor =  UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
        y += politicsView.frame.height
        self.view.addSubview(politicsView)
        let title:UILabel!
        if(screenHight > screenWidth) {
            title = UILabel((frame: CGRect(x: screenWidth/28, y: screenHight*0.1/18, width: 100, height: screenHight/21)))
        }else {
            title = UILabel((frame: CGRect(x: screenWidth/32, y: screenHight*0.1/18, width: 100, height: screenHight*0.8/18)))
        }
        title.text = "政治面貌"
        politicsView.addSubview(title)
        var x:CGFloat = 0.0
        var i = 0
        var index = 0
        for(i=0;i<2;i++) {
            var b:UIButton!
            if(screenHight > screenWidth) {
                x += screenWidth/28
                b = UIButton(type: UIButtonType.Custom)
                b.frame = CGRect(x: x, y: screenHight*1.1/18, width: screenWidth/8, height: screenHight/21)
            }else {
                x += screenWidth/32
                b = UIButton(type: UIButtonType.Custom)
                b.frame = CGRect(x: x, y: screenHight*1.1/18, width: screenWidth/13, height: screenHight*0.8/18)
                
            }
            x += b.frame.width
            b.setTitle(politicsTitle[index], forState: UIControlState.Normal)
            b.titleLabel?.font = UIFont(name: "Arial", size: 15)
            if(politicsSelected[index]) {
                b.backgroundColor = UIColor(red: 28/255, green: 28/255, blue: 28/255, alpha: 1)
                b.setTitleColor(UIColor(red: 75/255, green: 228/255, blue: 247/255, alpha: 1), forState: UIControlState.Normal)
            }else {
                b.backgroundColor = UIColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 1)
                b.setTitleColor(UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1), forState: UIControlState.Normal)
            }
            index++
            b.layer.cornerRadius = 5.0
            b.tag = tag
            tag++
            b.addTarget(self, action: "selected:", forControlEvents: UIControlEvents.TouchUpInside)
            
            politicsView.addSubview(b)
        }
        

    }
    
    func loadEdu() {
        eduView = UIView(frame:CGRect(x: 0, y: y, width: screenWidth, height: screenHight*2/18))
        eduView.backgroundColor =  UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
        y += eduView.frame.height
        self.view.addSubview(eduView)
        let title:UILabel!
        if(screenHight > screenWidth) {
            title = UILabel((frame: CGRect(x: screenWidth/28, y: screenHight*0.1/18, width: 100, height: screenHight/21)))
        }else {
            title = UILabel((frame: CGRect(x: screenWidth/32, y: screenHight*0.1/18, width: 100, height: screenHight*0.8/18)))
        }
        title.text = "学历"
        eduView.addSubview(title)
        var x:CGFloat = 0.0
        var i = 0
        var index = 0
        for(i=0;i<4;i++) {
            var b:UIButton!
            if(screenHight > screenWidth) {
                x += screenWidth/28
                b = UIButton(type: UIButtonType.Custom)
                b.frame = CGRect(x: x, y: screenHight*1.1/18, width: screenWidth/8, height: screenHight/21)
            }else {
                x += screenWidth/32
                b = UIButton(type: UIButtonType.Custom)
                b.frame = CGRect(x: x, y: screenHight*1.1/18, width: screenWidth/13, height: screenHight*0.8/18)
                
            }
            x += b.frame.width
            b.setTitle(eduTitle[index], forState: UIControlState.Normal)
            b.titleLabel?.font = UIFont(name: "Arial", size: 15)
            if(eduSelected[index]) {
                b.backgroundColor = UIColor(red: 28/255, green: 28/255, blue: 28/255, alpha: 1)
                b.setTitleColor(UIColor(red: 75/255, green: 228/255, blue: 247/255, alpha: 1), forState: UIControlState.Normal)
            }else {
                b.backgroundColor = UIColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 1)
                b.setTitleColor(UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1), forState: UIControlState.Normal)
            }
            index++
            b.layer.cornerRadius = 5.0
            b.tag = tag
            tag++
            b.addTarget(self, action: "selected:", forControlEvents: UIControlEvents.TouchUpInside)
            
            eduView.addSubview(b)
        }
        

    }

    func loadClass() {
        classView = UIView(frame:CGRect(x: 0, y: y, width: screenWidth, height: screenHight*2/18))
        classView.backgroundColor =  UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
        y += classView.frame.height
        self.view.addSubview(classView)
        let title:UILabel!
        if(screenHight > screenWidth) {
            title = UILabel((frame: CGRect(x: screenWidth/28, y: screenHight*0.1/18, width: 100, height: screenHight/21)))
        }else {
            title = UILabel((frame: CGRect(x: screenWidth/32, y: screenHight*0.1/18, width: 100, height: screenHight*0.8/18)))
        }
        title.text = "行政级别"
        classView.addSubview(title)
        var x:CGFloat = 0.0
        var i = 0
        var index = 0
        for(i=0;i<5;i++) {
            var b:UIButton!
            if(screenHight > screenWidth) {
                x += screenWidth/28
                b = UIButton(type: UIButtonType.Custom)
                b.frame = CGRect(x: x, y: screenHight*1.1/18, width: screenWidth/8, height: screenHight/21)
            }else {
                x += screenWidth/32
                b = UIButton(type: UIButtonType.Custom)
                b.frame = CGRect(x: x, y: screenHight*1.1/18, width: screenWidth/13, height: screenHight*0.8/18)
                
            }
            x += b.frame.width
            b.setTitle(classTitle[index], forState: UIControlState.Normal)
            b.titleLabel?.font = UIFont(name: "Arial", size: 15)
            if(classSelected[index]) {
                b.backgroundColor = UIColor(red: 28/255, green: 28/255, blue: 28/255, alpha: 1)
                b.setTitleColor(UIColor(red: 75/255, green: 228/255, blue: 247/255, alpha: 1), forState: UIControlState.Normal)
            }else {
                b.backgroundColor = UIColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 1)
                b.setTitleColor(UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1), forState: UIControlState.Normal)
            }
            index++
            b.layer.cornerRadius = 5.0
            b.tag = tag
            tag++
            b.addTarget(self, action: "selected:", forControlEvents: UIControlEvents.TouchUpInside)
            
            classView.addSubview(b)
        }
        

    }

    func loadManger() {
        
        mangerView = UIView(frame:CGRect(x: 0, y: y, width: screenWidth, height: screenHight*2/18))
        mangerView.backgroundColor =  UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
        y += mangerView.frame.height
        self.view.addSubview(mangerView)
        let title:UILabel!
        if(screenHight > screenWidth) {
            title = UILabel((frame: CGRect(x: screenWidth/28, y: screenHight*0.1/18, width: 120, height: screenHight/21)))
        }else {
            title = UILabel((frame: CGRect(x: screenWidth/32, y: screenHight*0.1/18, width: 120, height: screenHight*0.8/18)))
        }
       title.text = "专业技术职务"
        mangerView.addSubview(title)
        var x:CGFloat = 0.0
        var i = 0
        var index = 0
        for(i=0;i<5;i++) {
            var b:UIButton!
            if(screenHight > screenWidth) {
                x += screenWidth/28
                b = UIButton(type: UIButtonType.Custom)
                b.frame = CGRect(x: x, y: screenHight*1.1/18, width: screenWidth/8, height: screenHight/21)
            }else {
                x += screenWidth/32
                b = UIButton(type: UIButtonType.Custom)
                b.frame = CGRect(x: x, y: screenHight*1.1/18, width: screenWidth/13, height: screenHight*0.8/18)
                
            }
            x += b.frame.width
            b.setTitle(managerTitle[index], forState: UIControlState.Normal)
            b.titleLabel?.font = UIFont(name: "Arial", size: 15)
            if(mangerSelected[index]) {
                b.backgroundColor = UIColor(red: 28/255, green: 28/255, blue: 28/255, alpha: 1)
                b.setTitleColor(UIColor(red: 75/255, green: 228/255, blue: 247/255, alpha: 1), forState: UIControlState.Normal)
            }else {
                b.backgroundColor = UIColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 1)
                b.setTitleColor(UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1), forState: UIControlState.Normal)
            }
            index++
            b.layer.cornerRadius = 5.0
            b.tag = tag
            tag++
            b.addTarget(self, action: "selected:", forControlEvents: UIControlEvents.TouchUpInside)
            
            mangerView.addSubview(b)
        }
        

    }
    
    func loadUI() {
        loadDepartments()
        loadSex()
        loadAge()
        loadPolitics()
        loadEdu()
        loadClass()
        loadManger()

    }
    
    func reLoadUI() {
        y = 70.0
        tag = 101
        departView.removeFromSuperview()
        sexView.removeFromSuperview()
        ageView.removeFromSuperview()
        politicsView.removeFromSuperview()
        eduView.removeFromSuperview()
        classView.removeFromSuperview()
        mangerView.removeFromSuperview()
        loadUI()
    }

    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransitionToSize(size, withTransitionCoordinator: coordinator)
        screenWidth = UIScreen.mainScreen().applicationFrame.width
        screenHight = UIScreen.mainScreen().applicationFrame.height
        reLoadUI()
    }
    
    
    func selected(sender: UIButton!) {
        let tag = sender.tag
        var index = 0
        if(tag >= 101 && tag <= 112) {
            index = tag - 101
            if(!departSelected[index]) {
                changeToSelected(sender)
                departSelected[index] = true
            }else {
                changeToNormal(sender)
                departSelected[index] = false
            }
        }else if(tag >= 113 && tag <= 114) {
            index = tag - 113
            if(!sexSelected[index]) {
                changeToSelected(sender)
                sexSelected[index] = true
            }else {
                changeToNormal(sender)
                sexSelected[index] = false
            }

        }else if(tag >= 115 && tag <= 120) {
            index = tag - 115
            if(!ageSelected[index]) {
                changeToSelected(sender)
                ageSelected[index] = true
            }else {
                changeToNormal(sender)
                ageSelected[index] = false
            }

            
        }else if(tag >= 121 && tag <= 122) {
            index = tag - 121
            if(!politicsSelected[index]) {
                changeToSelected(sender)
                politicsSelected[index] = true
            }else {
                changeToNormal(sender)
                politicsSelected[index] = false
            }

        }else if(tag >= 123 && tag <= 126) {
            index = tag - 123
            if(!eduSelected[index]) {
                changeToSelected(sender)
                eduSelected[index] = true
            }else {
                changeToNormal(sender)
                eduSelected[index] = false
            }

        }else if(tag >= 127 && tag <= 131) {
            index = tag - 127
            if(!classSelected[index]) {
                changeToSelected(sender)
                classSelected[index] = true
            }else {
                changeToNormal(sender)
                classSelected[index] = false
            }

        }else {
            index = tag - 132
            if(!mangerSelected[index]) {
                changeToSelected(sender)
                mangerSelected[index] = true
            }else {
                changeToNormal(sender)
                mangerSelected[index] = false
            }

        }
        
        
    }
    
    func changeToNormal(b:UIButton) {
        
        b.backgroundColor = UIColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 1)
        b.setTitleColor(UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1), forState: UIControlState.Normal)
        
    }
    
    func changeToSelected(b:UIButton) {
        b.backgroundColor = UIColor(red: 28/255, green: 28/255, blue: 28/255, alpha: 1)
        b.setTitleColor(UIColor(red: 75/255, green: 228/255, blue: 247/255, alpha: 1), forState: UIControlState.Normal)
    }

    
//    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
//        super.viewDidLoad()
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
