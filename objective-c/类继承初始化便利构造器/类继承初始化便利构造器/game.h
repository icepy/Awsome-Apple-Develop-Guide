//
//  game.h
//  类继承初始化便利构造器
//
//  Created by xiangwenwen on 14/12/1.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

#ifndef ____________game_h
#define ____________game_h


#endif

//定义父类 GameInfomation

@interface GameInfomation:NSObject
{
    //游戏名字
    NSString *gameName;
    //游戏开发商
    NSString *gameDeveloper;
    //游戏运营时间
    NSInteger gameTime;
}

//输出信息
-(void)outInfomation;

//设置游戏名字
-(void)setGameName:(NSString *)_gameName;

//设置游戏开发商
-(void)setGameDeveloper:(NSString *)_gameDeveloper;

//设置游戏运营时间
-(void)setGameTime:(NSInteger)_gameTime;

@end