//
//  Button.m
//  protocol
//
//  Created by xiangwenwen on 14/12/7.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

#import "Button.h"

@implementation Button

-(void)dealloc
{
    NSLog(@"释放 %@",self);
    //释放这个协议
    [_bDelegate release];
    [super dealloc];
}
-(void)onClickMe
{
    if ([_bDelegate respondsToSelector:@selector(onclick:)]) {
        //通知代理
        [_bDelegate onclick:self];
    }
}

@end


