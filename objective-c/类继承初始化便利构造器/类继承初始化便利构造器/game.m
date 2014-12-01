//
//  game.m
//  类继承初始化便利构造器
//
//  Created by xiangwenwen on 14/12/1.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "game.h"

@implementation GameInfomation

-(void) outInfomation
{
    NSLog(@"游戏名字：%@",gameName);
    NSLog(@"游戏开发商：%@",gameDeveloper);
    NSLog(@"游戏运营时间：%ld年",gameTime);
}

-(void)setGameName:(NSString *)_gameName
{
    gameName = _gameName;
}

-(void)setGameDeveloper:(NSString *)_gameDeveloper
{
    gameDeveloper = _gameDeveloper;
}

-(void)setGameTime:(NSInteger)_gameTime
{
    gameTime = _gameTime;
}

@end
