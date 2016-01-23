//
//  BiscInfoViewController.swift
//  太铁人员系统
//
//  Created by 刘宗岱 on 15/12/7.
//  Copyright © 2015年 蓝之青. All rights reserved.
//

import UIKit

class BiscInfoViewController: UIViewController {
    
    
    var part1:[UIView] = []
    var part2:[UIView] = []

    var screenWidth = UIScreen.mainScreen().applicationFrame.width
    var screenHight = UIScreen.mainScreen().applicationFrame.height
    
    var width:CGFloat!
    var hight:CGFloat!
    
    var y:CGFloat = 60.0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
        if(screenWidth > screenHight) {
            screenWidth = screenWidth * 0.7
            width = screenWidth/7.0
            hight = width*3.0/2.0
        }else {
            width = screenWidth/7.0
            hight = width*3.0/2.0
        }
        // Do any additional setup after loading the view.
        loadPart1()
        loadPart2()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func reLoadUI() {
        for p1 in part1 {
            p1.removeFromSuperview()
        }
        for p2 in part2 {
            p2.removeFromSuperview()
        }
        loadPart1()
        loadPart2()
    }
    
    
    func loadPart1() {
        
        var i = 0
        var views:[UIView] = []
        y = 60.0
        for(i=0;i<4;i++) {
            let view1 = UIView(frame: CGRect(x:0 , y: y, width: screenWidth - width, height: hight/4))
            view1.backgroundColor = UIColor.clearColor()
            self.view.addSubview(view1)
            y += view1.frame.height
            views.append(view1)
            
            
            switch i {
            case 0:
                var j = 0
                var x:CGFloat = 0.0
                for(j=0;j<6;j++) {
                    let label = InfoLabel(frame: CGRect(x: x, y: 0, width: width, height: hight/4))
                    label.textAlignment = NSTextAlignment.Center
                    
                    switch j {
                    case 0:
                        label.text = "姓名"
                        
                    case 1:
                        label.text = STAFF.xm
                    case 2:
                        label.text = "性别"
                    case 3:
                        label.text = STAFF.xb
                    case 4:
                        label.text = "出生年月"
                    case 5:
                        label.text = STAFF.cjgzrq
                    default:
                        break
                    }
                    x += label.frame.width
                    view1.addSubview(label)
                }
            case 1:
                var j = 0
                var x:CGFloat = 0.0
                for(j=0;j<6;j++) {
                    let label = InfoLabel(frame: CGRect(x: x, y: 0, width: width, height: hight/4))
                    label.textAlignment = NSTextAlignment.Center

                    switch j {
                    case 0:
                        label.text = "民族"
                    case 1:
                        label.text = STAFF.xm
                    case 2:
                        label.text = "籍贯"
                    case 3:
                        label.text = STAFF.xb
                    case 4:
                        label.text = "出生地"
                    case 5:
                        label.text = STAFF.cjgzrq
                    default:
                        break
                    }
                    x += label.frame.width
                    view1.addSubview(label)

                }
            case 2:
                var j = 0
                var x:CGFloat = 0.0
                for(j=0;j<6;j++) {
                    let label = InfoLabel(frame: CGRect(x: x, y: 0, width: width, height: hight/4))
                    label.textAlignment = NSTextAlignment.Center

                    switch j {
                    case 0:
                        label.text = "入党时间"
                    case 1:
                        label.text = STAFF.xm
                    case 2:
                        label.text = "参加工作时间"
                    case 3:
                        label.text = STAFF.xb
                    case 4:
                        label.text = "健康状况"
                    case 5:
                        label.text = STAFF.cjgzrq
                    default:
                        break
                    }
                    x += label.frame.width
                    view1.addSubview(label)

                }
            case 3:
                var j = 0
                var x:CGFloat = 0.0
                for(j=0;j<4;j++) {
                    
                    switch j {
                    case 0:
                        let label = InfoLabel(frame: CGRect(x: x, y: 0, width: width, height: hight/4))
                        label.textAlignment = NSTextAlignment.Center

                        label.text = "专业技术职务"
                        x += label.frame.width
                        view1.addSubview(label)

                    case 1:
                        let label = InfoLabel(frame: CGRect(x: x, y: 0, width: width*2, height: hight/4))
                        label.textAlignment = NSTextAlignment.Center

                        label.text = STAFF.xm
                        x += label.frame.width
                        view1.addSubview(label)

                    case 2:
                        let label = InfoLabel(frame: CGRect(x: x, y: 0, width: width, height: hight/4))
                        label.textAlignment = NSTextAlignment.Center

                        label.text = "熟悉专业特长"
                        x += label.frame.width
                        view1.addSubview(label)

                    case 3:
                        let label = InfoLabel(frame: CGRect(x: x, y: 0, width: width*2, height: hight/4))
                        label.textAlignment = NSTextAlignment.Center

                        label.text = STAFF.xb
                        x += label.frame.width
                        view1.addSubview(label)

                    default:
                        break
                    }
                }
            default:
                break
            }
        }
        self.part1 = views
    }
    
    func loadPart2() {
        var views:[UIView] = []

        let view1 = UIView(frame: CGRect(x: 0, y: y, width: screenWidth, height: hight/2))
        view1.backgroundColor = UIColor.clearColor()
        y += view1.frame.height
        var x:CGFloat = 0
        let label1 = InfoLabel(frame: CGRect(x: 0, y: 0, width: width, height: hight/2))
        x += label1.frame.width
        let label2 = InfoLabel(frame: CGRect(x: x, y: 0, width: width, height: hight/4))
        let label3 = InfoLabel(frame: CGRect(x: x, y: hight/4, width: width, height: hight/4))
        x += label2.frame.width
        let label4 = InfoLabel(frame: CGRect(x: x, y: 0, width: width*2, height: hight/4))
        let label5 = InfoLabel(frame: CGRect(x: x, y: hight/4, width: width*2, height: hight/4))
        x += label4.frame.width
        let label6 = InfoLabel(frame: CGRect(x: x, y: 0, width: width, height: hight/4))
        let label7 = InfoLabel(frame: CGRect(x: x, y: hight/4, width: width, height: hight/4))
        x += label6.frame.width
        let label8 = InfoLabel(frame: CGRect(x: x, y: 0, width: width*2, height: hight/4))
        let label9 = InfoLabel(frame: CGRect(x: x, y: hight/4, width: width*2, height: hight/4))
        label1.textAlignment = NSTextAlignment.Center
        label2.textAlignment = NSTextAlignment.Center
        label3.textAlignment = NSTextAlignment.Center
        label4.textAlignment = NSTextAlignment.Center
        label5.textAlignment = NSTextAlignment.Center
        label6.textAlignment = NSTextAlignment.Center
        label7.textAlignment = NSTextAlignment.Center
        label8.textAlignment = NSTextAlignment.Center
        label9.textAlignment = NSTextAlignment.Center
        label1.text = "学历学位"
        label2.text = "全日制教育"
        label3.text = "在职教育"
        label4.text = ""
        label5.text = ""
        label6.text = "毕业院校系及专业"
        label7.text = "毕业院校系及专业"
        label8.text = ""
        label9.text = ""
        view1.addSubview(label1)
        view1.addSubview(label2)
        view1.addSubview(label3)
        view1.addSubview(label4)
        view1.addSubview(label5)
        view1.addSubview(label6)
        view1.addSubview(label7)
        view1.addSubview(label8)
        view1.addSubview(label9)

        //----------------------------------------------------
        x = 0.0
        let view2 = UIView(frame: CGRect(x: 0, y: y, width: screenWidth, height: hight/4))
        view2.backgroundColor = UIColor.clearColor()
        y += view2.frame.height
        
        let label10 = InfoLabel(frame: CGRect(x: 0, y: 0, width: width*2, height: hight/4))
        x += label10.frame.width
        let label11 = InfoLabel(frame: CGRect(x: x, y: 0, width: screenWidth - width*2, height: hight/4))
        label10.textAlignment = NSTextAlignment.Center
        label11.textAlignment = NSTextAlignment.Center
        
        label10.text = "现任职务"
        label11.text = STAFF.zwmc
        
        view2.addSubview(label10)
        view2.addSubview(label11)



        //----------------------------------------------------
        x = 0
        let view3 = UIView(frame: CGRect(x: 0, y: y, width: screenWidth, height: hight*2))
        view3.backgroundColor = UIColor.clearColor()
        y += view3.frame.height
        let label12 = InfoLabel(frame: CGRect(x: 0, y: 0, width: width, height: hight*2))
        x += label12.frame.width
        let label13 = InfoLabel(frame: CGRect(x: x, y: 0, width: screenWidth - width, height: hight*2))
        label12.textAlignment = NSTextAlignment.Center
        label12.text = "简历"
        label13.text = "....................."
        view3.addSubview(label12)
        view3.addSubview(label13)
        
        //----------------------------------------------------
        x = 0
        let view4 = UIView(frame: CGRect(x: 0, y: y, width: screenWidth, height: hight*0.5))
        view4.backgroundColor = UIColor.clearColor()
        y += view4.frame.height
        let label14 = InfoLabel(frame: CGRect(x: x, y: 0, width: width, height: hight/2))
        x += label14.frame.width
        let label15 = InfoLabel(frame: CGRect(x: x, y: 0, width: screenWidth - width, height: hight/2))
        
        label14.textAlignment = NSTextAlignment.Center
        label14.text = "奖惩情况"
        label15.text = "................................"
        view4.addSubview(label14)
        view4.addSubview(label15)
        
        
        self.view.addSubview(view1)
        self.view.addSubview(view2)
        self.view.addSubview(view3)
        self.view.addSubview(view4)

        views.append(view1)
        views.append(view2)
        views.append(view3)
        views.append(view4)

        part2 = views
        
    }
    
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransitionToSize(size, withTransitionCoordinator: coordinator)
        
        screenWidth = UIScreen.mainScreen().applicationFrame.width
        screenHight = UIScreen.mainScreen().applicationFrame.height
        if(screenWidth > screenHight) {
            screenWidth = screenWidth * 0.7
            width = screenWidth/7.0
            hight = width*3.0/2.0
        }else {
            width = screenWidth/7.0
            hight = width*3.0/2.0
        }
        reLoadUI()
    }

}
