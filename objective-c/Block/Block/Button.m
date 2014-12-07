//
//  Button.m
//  Block
//
//  Created by xiangwenwen on 14/12/7.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

#import "Button.h"

@implementation Button

- (void)dealloc
{
    NSLog(@"释放内存");
    [super dealloc];
}

-(void)onclick
{
    _butblock(self);
}

@end
