//
//  camp.m
//  内存管理
//
//  Created by xiangwenwen on 14/12/2.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

#import "camp.h"

@implementation camp

@synthesize Wname = _Wname;

-(void)dealloc
{
    NSLog(@"camp类，成功销毁");
    [super dealloc];
}

-(void)toStringInfomation:(NSString *)campName myGameName:(NSString *)myGameName myGameLe:(NSInteger)myGameLe
{
    NSLog(@"阵营：%@",campName);
    NSLog(@"游戏角色名：%@",myGameName);
    NSLog(@"游戏角色等级：%ld",myGameLe);
}



@end
