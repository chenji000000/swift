//
//  ViewController.m
//  block
//
//  Created by tarena on 15/12/29.
//  Copyright © 2015年 tarena. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

//界面跳转时
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ViewController2 *vc = segue.destinationViewController;
    vc.block = ^(NSString *text) {
        self.label.text = text;
    };
}

//反向传值
//接收类 定义具体的 BLOCK代码块
//传入类 调用BLOCK 把要传的值作为参数传入

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
