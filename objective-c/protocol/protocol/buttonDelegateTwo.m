//
//  buttonDelegateTwo.m
//  protocol
//
//  Created by xiangwenwen on 14/12/7.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

#import "buttonDelegateTwo.h"
#import "Button.h"

@implementation buttonDelegateTwo

-(void)onclick:(Button *)btn
{
    NSLog(@"点击%@",btn);
}
@end
