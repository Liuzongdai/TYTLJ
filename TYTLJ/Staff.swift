//
//  Staff.swift
//  太铁人员系统
//
//  Created by 刘宗岱 on 15/12/7.
//  Copyright © 2015年 蓝之青. All rights reserved.
//

import UIKit

class Staff: NSObject {

    var xm:String?
    var rybm:String?
    var sfzh:String?
    var dwbsm:String?
    var bmbm:String?
    var dwmc:String?
    var xsbmmc:String?
    var cjgzrq:String?
    var rdsj:String?
    var xdzzwrq:String?
    var xjszwrq:String?
    var zgmcqdrq:String?
    var xb:String?
    var mz:String?
    var zwmc:String?
    var xjszwmc:String?
    var zgbm:String?
    var zgmc:String?
    var whcd:String?
    var jg:Float?
    var csd:Float?
    var jkzk:String?
    var headimg:UIImage?
    
    init(dic:AnyObject) {
        self.xm = dic.valueForKey("xm") as? String
        self.rybm = dic.valueForKey("rybm") as? String
        self.sfzh = dic.valueForKey("sfzh") as? String
        self.dwbsm = dic.valueForKey("dwbsm") as? String
        self.bmbm = dic.valueForKey("bmbm") as? String
        self.dwmc = dic.valueForKey("dwmc") as? String
        self.xsbmmc = dic.valueForKey("xsbmmc") as? String
        self.cjgzrq = dic.valueForKey("cjgzrq") as? String
        self.rdsj = dic.valueForKey("rdsj") as? String
        self.xdzzwrq = dic.valueForKey("xdzzwrq") as? String
        self.xjszwrq = dic.valueForKey("xjszwrq") as? String
        self.zgmcqdrq = dic.valueForKey("zgmcqdrq") as? String
        self.xb = dic.valueForKey("xb") as? String
        self.mz = dic.valueForKey("mz") as? String
        self.zwmc = dic.valueForKey("zwmc") as? String
        self.xjszwmc = dic.valueForKey("xjszwmc") as? String
        self.zgbm = dic.valueForKey("zgbm") as? String
        self.zgmc = dic.valueForKey("zgmc") as? String
        self.whcd = dic.valueForKey("whcd") as? String
        self.jg = dic.valueForKey("zgbm") as? Float
        self.csd = dic.valueForKey("zgbm") as? Float
        self.jkzk = dic.valueForKey("jkzk") as? String
        let data = dic.valueForKey("img") as? NSData
        if let d = data {
            self.headimg = UIImage(data: d)

        }


    }

}
