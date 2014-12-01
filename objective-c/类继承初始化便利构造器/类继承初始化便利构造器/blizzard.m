//
//  blizzard.m
//  类继承初始化便利构造器
//
//  Created by xiangwenwen on 14/12/1.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "blizzard.h"

@implementation Blizzard

-(id)initWithGameInfo:(NSString *)_name NgameTime:(NSInteger)_time NgameDeveloper:(NSString *)_deve
{
    self = [super init];
    if (self != nil) {
        gameName = _name;
        gameDeveloper = _deve;
        gameTime = _time;
        NSLog(@"指定初始化完成");
    }
    return self;
}

-(id)initWithBlizzardInfo:(NSString *)_deve
{
    self = [super init];
    return [self initWithGameInfo:@"魔兽世界" NgameTime:10 NgameDeveloper:_deve];
}

+(id)blizzardWithInfomation:(NSString *)_name NgameTime:(NSInteger)_time NgameDeveloper:(NSString *)_deve
{
    Blizzard *blz = [[Blizzard alloc] initWithGameInfo:_name NgameTime:_time NgameDeveloper:_deve];
    return blz;
}

@end