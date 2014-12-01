//
//  main.m
//  类继承初始化便利构造器
//
//  Created by xiangwenwen on 14/12/1.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

/*
    场景描述
 
    父类  游戏 Game
 
        游戏名字    gameName
        游戏开发商   gameDeveloper
        游戏运营时间  gameTime
 
        设置游戏开发商 setterDeveloper
        设置游戏名字  setterName
        设置游戏运营时间    setterTime
 
 
    子类  暴雪
        
        实现指定初始化  魔兽世界  暴雪  10年
    
        实现自定义初始化  星际争霸 暴雪 16年
 
        便利构造器   暗黑破坏神  暴雪  17年
 
 */

#import <Foundation/Foundation.h>
#import "blizzard.h"


int main(int argc, const char * argv[]) {
    //暴雪类继承游戏类 测试
//    Blizzard *blz = [[Blizzard alloc] init];
//    [blz setGameName:@"暗黑破坏神3"];
//    [blz setGameDeveloper:@"北方工作室"];
//    [blz setGameTime:16];
//    [blz outInfomation];
    
    // 指定初始化方法
//    Blizzard *blz = [[Blizzard alloc] initWithGameInfo:@"魔兽世界" NgameTime:10 NgameDeveloper:@"暴雪－魔兽世界开发小组"];
//    [blz outInfomation];
    
    //自定义初始化方法
//    Blizzard *blz = [[Blizzard alloc] initWithBlizzardInfo:@"暴雪娱乐"];
//    [blz setGameTime:23];
//    [blz setGameName:@"吉他英雄"];
//    [blz outInfomation];
    
    
    /*
        问题来了，之前看书说便利构造器中需要返回autorelease，但是xcode 6.1里面已经没有这个了。
     
        根据别的语言经验，既然已经在类静态方法中把本类给new了，一个对象，我返回的就是这个指针指向的对象，编译器也是可以通过的，不知道这样是否有问题？
     
        若有人看见这段，望解答。
     
     */
    
    Blizzard *blz = [Blizzard blizzardWithInfomation:@"星际争霸2" NgameTime:3 NgameDeveloper:@"暴雪娱乐"];
    [blz outInfomation];
    return 0;
}
