//
//  ButtonDelegate.m
//  protocol
//
//  Created by xiangwenwen on 14/12/7.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ButtonDelegate.h"
#import "Button.h"

@implementation ButtonDelegate

//实现协议的onclick方法
-(void)onclick:(Button *)btn
{
    NSLog(@"点击%@",btn);
}
@end