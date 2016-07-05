//
//  LoadImage.m
//  Block_CallBack
//
//  Created by tarena on 15/12/29.
//  Copyright © 2015年 tarena. All rights reserved.
//

#import "LoadImage.h"

@implementation LoadImage
+(void)loadImageName:(NSString *)name succedCallBack:(SuccedBlock)succedBlock failBlock:(FailBlock)failBlock {
    UIImage *image = [UIImage imageNamed:name];
    if (image) {
        //图片创建成功, 去做成功的事吧
        succedBlock(image);
    }else {
        NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"load image error" forKey:NSLocalizedDescriptionKey];
        NSError *error = [NSError errorWithDomain:@"" code:100 userInfo:userInfo];
        //图片创建失败,去做失败的事
        failBlock(error);
    }
}
@end











