//
//  ViewController.swift
//  WShenBian
//
//  Created by tarena on 15/12/29.
//  Copyright © 2015年 tarena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headImageView: UIImageView!
    
    @IBOutlet weak var backgroundView: UIView!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBAction func buttonClick(sender: UIButton) {
        //OC 中使用
//        [MBProgressHUD showError(@"用户名或密码错误")];
        //在swift中 使用 OC中的代码
        MBProgressHUD.showError("用户名或密码错误")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headImageView.round(3, borderColor: UIColor.whiteColor().CGColor)
        backgroundView.roundRect(3, borderColor: UIColor.whiteColor().CGColor)
        loginButton.roundRect()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

