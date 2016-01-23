//
//  InfoLabel.swift
//  太铁人员系统
//
//  Created by 刘宗岱 on 15/12/7.
//  Copyright © 2015年 蓝之青. All rights reserved.
//

import UIKit

class InfoLabel: UILabel {
//
//    self.layer.borderWidth = 1.0
//    self.layer.borderColor = (UIColor(red: 28/255, green: 28/255, blue: 28/255, alpha: 1)).CGColor
//    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.borderWidth = 1.0
        self.layer.borderColor = (UIColor(red: 28/255, green: 28/255, blue: 28/255, alpha: 1)).CGColor
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
