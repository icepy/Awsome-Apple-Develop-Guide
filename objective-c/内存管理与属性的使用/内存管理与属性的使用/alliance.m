//
//  alliance.m
//  内存管理
//
//  Created by xiangwenwen on 14/12/2.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

#import "alliance.h"

@implementation alliance

@synthesize WgameName = _WgameName;
@synthesize WgameLe = _WgameLe;
@synthesize WgameMoney = _WgameMoney;
@synthesize idCamp;

-(void)showPropertyInfomation
{
    NSLog(@"角色名称：%@",self.WgameName);
    NSLog(@"角色等级：%ld", self.WgameLe);
    if (self.WgameMoney) {
        NSLog(@"角色金币：%d",self.WgameMoney);
    }
    NSLog(@"所属阵营：%@",self.Wname);
}

+(id)allianceUse
{
    alliance *allia = [[alliance alloc] init];
    allia.WgameName = @"青春独醉";
    allia.WgameLe = 92;
    allia.Wname = @"联盟";
    return [allia autorelease];
}

-(void)dealloc
{
    NSLog(@"alliance类，成功销毁");
    [super dealloc];
}

@end
