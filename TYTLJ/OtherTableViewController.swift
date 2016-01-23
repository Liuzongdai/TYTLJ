//
//  OtherTableViewController.swift
//  TLJ
//
//  Created by 刘宗岱 on 15/12/2.
//  Copyright © 2015年 蓝之青. All rights reserved.
//

import UIKit

class OtherTableViewController: UITableViewController {

    var depart:String!
    var branch = []
    var departments = []
    var firstLetter = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
        switch depart {
        case "太原铁路局附属机构":
            fushujigou()
        case "太原铁路局派出机构":
            paichujigou()
        case "太原铁路局学协会":
            xuexiehui()
        case "太原铁路局运输站段":
            yushuzhuan()
        case "太原铁路局铁路公安局、检察院、法院":
            jianchayuan()
        case "太原铁路局非运输企业":
            feiyunshu()
        case "太原铁路局其他单位":
            qita()
        case "部合资公司":
            buhezi()
        case "太原铁路局运输辅助单位":
            yunshufuzhu()
        default:
            departments = []
            
            
            
            
        }
    
    }

    func fushujigou() {
        // "","","","","","","","","","",""
        let A = ["安全宣传队","安全监管办驻太原机务段验收室","安全监管办驻侯马北机务段验收室","安全监管办驻湖东电力机务段验收室","安全监管办驻太原供电段验收室","安全监管办驻大同西供电段验收室","安全监管办驻太原车辆段验收室","安全监管办驻太原北车辆段验收室","安全监管办驻湖东车辆段验收室","安全监管办驻太原工务机械段验收室","安全监管办驻侯马北车辆段验收室"]
        let C = ["财务集中核算管理所","车辆检查所"]
        let D = ["档案史志室","电务检测所","电教中心","大秦公司铁路资金结算所","大同安全监察大队","大同社保代理部","大同离退休管理部","道路交通安全管理办公室"]
        let F = ["法律服务所","房产管理所"]
        let G = ["概预算审查所","工程管理部","工程质量监督站","工务检测所","港口协调办公室","高速重载技术专家组","供电检测所"]
        let H = ["合资与地方铁路安全管理办公室","侯马安全监察大队","护路联防办公室","货运营销中心","货运设备检测所"]
        let J = ["机务检测所","机要通信室","节能监测站"]
        let K = ["客货运输统计所","客票管理所","控股公司管理与发展研究办公室"]
        let L = ["劳动力调剂站","绿化管理办公室","路外工程管理办公室","临汾社保代理部","临汾离退休管理部"]
        let Q = ["秦皇岛安全监察大队"]
        let R = ["人才交流培训站"]
        let S = ["审计室","收入稽查队","施工安全监督检查大队","收入稽核队"]
        let T = ["太原铁路客户服务中心","太原安全监察大队","特种设备检测所","土地管理办公室","太原铁路资金结算所"]//太原铁路资金结算所 有下属单位 12/4
        let W = ["卫生监督所","网络舆情室","物流信息服务中心"]
        let X = ["新线工程建设协调办公室","安全监管办驻侯马北供电段验收室","信息技术所"]
        let Z = ["战备所(武器库)","职工保障性住房建设管理办公室","职业技能鉴定指导站"]
        departments = [A,C,D,F,G,H,J,K,L,Q,R,S,T,W,X,Z]
        branch = ["太原资金结算所","大秦公司铁路资金结算所"]
        
        firstLetter = ["A","C","D","F","G","H","J","K","L","Q","R","S","T","W","X","Z"]
    }
    
    func paichujigou() {
        let p = ["北京铁路办事处"]
        departments = [p]
    }
    
    func xuexiehui() {
        let p = ["财务会计学会","企业管理协会","山西省铁道学会"]
        departments = [p]
    }
    
    func yushuzhuan() {
        let C = ["茶坞工务段"]
        let D = ["大同车务段","大同电务段","大同工务段","大同西供电段","大同站","大秦车务段"]
        let H = ["侯马北工务段","侯马北机务段","侯马车务段","湖东车辆段","湖东电力机务段","侯马北供电段","侯马电务段","侯马北车辆段"]
        let J = ["介休车务段"]
        let S = ["朔州车务段","朔州工务段"]
        let T = ["太原北车辆段","太原北站","太原车辆段","太原车务段","太原南站","太原电务段","太原工务段","太原供电段","太原机务段","太原客运段","太原站","太原工务机械段","太原南工务段","太原通信段"]
        let Y = ["榆次站","原平车务段","原平工务段"]
        let Q = ["秦皇岛西工务段"]
        departments = [C,D,H,J,S,T,Y,Q]
        firstLetter = ["C","D","H","J","S","T","Y","Q"]
        
    }
    
    func jianchayuan() {
        let p = ["大同铁路公安处","大同铁路运输法院","大同铁路运输检察院","临汾铁路公安处","临汾铁路运输法院","临汾铁路运输检察院","太原铁路公安处","太原铁路公安局","太原铁路运输法院","太原铁路运输检察分院","太原铁路运输检察院","太原铁路运输中级法院","秦皇岛铁路公安处"]
        departments = [p]
    }
    
    func feiyunshu() {
        let p = ["大秦铁路股份有限公司自备车管理中心","山西太铁联合物流有限公司","山西先行经贸有限公司","太原晋太实业(集团)有限公司","太原铁路新创实业集团有限公司","大同新通实业有限责任公司","大同铁联实业有限责任公司","山西大秦物流有限公司","山西三晋铁建工程集团有限公司","京太联合物流有限公司","太原铁路地产置业有限公司"]//大同新通实业有限责任公司,大同铁联实业有限责任公司  0/5,6
        departments = [p]
    }
    
    func qita() {
        let B = ["北同蒲线铁路扩能改造指挥部"]
        let D = ["大秦铁路股份有限公司","大秦线铁路扩能改造指挥部"]
        let G = ["工程监理所"]
        let J = ["机关服务所"]
        let L = ["吕临铁路有限责任公司","吕梁供电段筹备组","吕梁工务段筹备组","吕梁电务段筹备组"]
        let N = ["宁岢车务段筹备组","南同蒲线铁路扩能改造指挥部"]
        let S = ["山西侯禹铁路有限责任公司","山西太兴铁路有限责任公司","山西孝柳铁路有限责任公司","山西中鼎铁路货运物流有限公司"]
        let T = ["唐港铁路有限责任公司","太原铁道报社","太原铁路有线电视台","太原南站工程建设指挥部","太原铁路局太原枢纽建设指挥部"]//唐港铁路有限责任公司 7/0
        let W = ["物资采购所"]
        let Y = ["运城至三门峡铁路有限责任公司筹备组(指挥部)"]
        let Z = ["自备车管理办公室","准朔铁路有限责任公司"]
        departments = [B,D,G,J,L,N,S,T,W,Y,Z]
        firstLetter = ["B","D","G","J","L","N","S","T","W","Y","Z"]
    }
    
    func buhezi() {
        let p = ["大西铁路客运专线有限责任公司","晋豫鲁铁路通道股份有限公司"]
        departments = [p]
    }

    func yunshufuzhu() {
        let p = ["太原铁路局党校","疾病预防控制所","计量所","太原公寓管理段","太原职工培训基地","科学技术研究所","太原物资供应段(山西晋龙海川物资有限公司、物资采购所)","太原铁路房建段","太原装卸管理段"]//太原铁路房建段
        departments = [p]
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return departments.count
        
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        var i = 0
        let count = departments.count
        for(i = 0;i<count;i++) {
            if(section == i) {
                return departments[i].count
            }
        }
        return 1
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        let label = cell.viewWithTag(101) as! UILabel
        var i = 0
        let count = departments.count
        cell.backgroundColor = UIColor.clearColor()
        for(i = 0;i<count;i++) {
            if(indexPath.section == i) {
                let a = departments[i] as! NSArray
                label.text = a[indexPath.row] as? String
            }
        }
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 78
    }
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }

    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView(frame: CGRect(x: 10, y: 0, width: 10, height: 15))
        if(firstLetter.count > 0) {
            let letterLabel = UILabel(frame: CGRect(x: 10, y: 4, width: 30, height: 15))
            letterLabel.text = firstLetter[section] as? String
            letterLabel.textColor = UIColor(red: 75/255, green: 228/255, blue: 247/255, alpha: 1)
            headerView.addSubview(letterLabel)
            headerView.backgroundColor = UIColor(red: 28/255, green: 28/255, blue: 28/255, alpha: 1)

        }
        return headerView
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let indexPath = self.tableView.indexPathForSelectedRow

        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let staff = segue.destinationViewController as! StaffTableViewController
        
        let arr = departments[indexPath!.section]
        staff.department = arr[indexPath!.row] as! String
        //self.navigationController?.pushViewController(staff, animated: true)
        

    }
    
    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let staff = mainStoryboard.instantiateViewControllerWithIdentifier("staff") as! StaffTableViewController
        let Z = mainStoryboard.instantiateViewControllerWithIdentifier("Zi") as! ZiTableViewController
        let arr = departments[indexPath.section]
        print(arr[indexPath.row])
        staff.department = arr[indexPath.row] as! String
        self.navigationController?.pushViewController(staff, animated: true)

        
        
//       let arr = departments[indexPath.section]
//        print(indexPath.section)
//        print(indexPath.row)
//        if arr.count > 0 {
//            let str = arr[indexPath.row] as! String
//            if(str == "太原铁路资金结算所") {
//                Z.depart = "太原铁路资金结算所"
//                self.navigationController?.pushViewController(Z, animated: true)
//            }else if(str == "大同新通实业有限责任公司") {
//                Z.depart = "大同新通实业有限责任公司"
//                self.navigationController?.pushViewController(Z, animated: true)
//
//            }else if(str == "大同铁联实业有限责任公司") {
//                Z.depart = "大同铁联实业有限责任公司"
//                self.navigationController?.pushViewController(Z, animated: true)
//
//            }else if(str == "唐港铁路有限责任公司") {
//                Z.depart = "唐港铁路有限责任公司"
//                self.navigationController?.pushViewController(Z, animated: true)
//
//            }else if(str == "太原铁路房建段") {
//                Z.depart = "太原铁路房建段"
//                self.navigationController?.pushViewController(Z, animated: true)
//
//            }else {
//                staff.department = arr[indexPath.row] as! String
//                self.navigationController?.pushViewController(staff, animated: true)
//            }
//        }
    }


}
