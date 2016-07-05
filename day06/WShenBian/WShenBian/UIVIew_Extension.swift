//
//  UIVIew_Extension.swift
//  WShenBian
//
//  Created by tarena on 15/12/29.
//  Copyright © 2015年 tarena. All rights reserved.
//

import UIKit
//UIView_Extension 

extension UIView {
    
    //设置圆角布局
    func setRoundLayer(cornerRadius : CGFloat,borderWidth : CGFloat, borderColor : CGColor) {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = cornerRadius
        self.layer.borderColor = borderColor
        self.layer.borderWidth = borderWidth
    }
    
    //没有边
    func roundRect() {
        self.roundRect(0, borderColor: UIColor.whiteColor().CGColor)
    }
    
    //自定义 边的颜色 和 宽度的 圆角矩形
    func roundRect(borderWidth : CGFloat, borderColor : CGColor) {
        self.setRoundLayer( self.bounds.size.width * 0.05, borderWidth: borderWidth, borderColor: borderColor)
    }
    
    //没有变的圆形
    func round() {
        self.round(0, borderColor: UIColor.whiteColor().CGColor)
    }
    
    //带边 带颜色 的圆形
    func round(borderWidth : CGFloat, borderColor : CGColor) {
        let width = self.bounds.size.width
        let height = self.bounds.size.height
        assert(width == height, "必须是正方形,宽高必须相等")
        self.setRoundLayer( self.bounds.size.width * 0.5, borderWidth: borderWidth, borderColor: borderColor)
    }
    
}
















