//
//  ViewController2.h
//  block
//
//  Created by tarena on 15/12/29.
//  Copyright © 2015年 tarena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController2 : UIViewController

typedef void(^BLOCK)(NSString *);
@property (nonatomic, copy) BLOCK block;

@end
