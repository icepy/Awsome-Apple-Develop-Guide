//
//  blizzard.h
//  类继承初始化便利构造器
//
//  Created by xiangwenwen on 14/12/1.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

#ifndef ____________blizzard_h
#define ____________blizzard_h


#endif

#import "game.h"

@interface Blizzard:GameInfomation

// 指定初始化
-(id)initWithGameInfo:(NSString *)_name NgameTime:(NSInteger)_time NgameDeveloper:(NSString *)_deve;

// 自定义类型
-(id)initWithBlizzardInfo:(NSString *)_deve;

//便利构造器
+(id)blizzardWithInfomation:(NSString *)_name NgameTime:(NSInteger)_time NgameDeveloper:(NSString *)_deve;

@end