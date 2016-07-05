//
//  ViewController.m
//  Block_CallBack
//
//  Created by tarena on 15/12/29.
//  Copyright © 2015年 tarena. All rights reserved.
//

#import "ViewController.h"
#import "LoadImage.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loadImage:(UIButton *)sender {
    [LoadImage loadImageName:self.textField.text succedCallBack:^(UIImage *image) {
        UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
        [self.view addSubview:imageView];
    } failBlock:^(NSError *error) {
        NSLog(@"图片加载错误, %@",[error localizedDescription]);
    }];
}
@end




