//
//  LoadImage.h
//  Block_CallBack
//
//  Created by tarena on 15/12/29.
//  Copyright © 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef void (^SuccedBlock)(UIImage*);
typedef void (^FailBlock)(NSError *error);
@interface LoadImage : NSObject
+(void)loadImageName:(NSString*)name succedCallBack:(SuccedBlock)succedBlock failBlock:(FailBlock)failBlock;
@end











