//
//  alliance.h
//  内存管理
//
//  Created by xiangwenwen on 14/12/2.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

#import "camp.h"

//@class camp;

@interface alliance : camp


/*
    nonatomic 非原子性  线程不安全状态
    atomic 原子性  线程安全
 
    
 */


@property(nonatomic,copy) NSString * WgameName;
@property(nonatomic,assign) NSInteger WgameLe;
@property(nonatomic,assign) int WgameMoney;
@property(atomic,retain) camp * idCamp;


-(void)dealloc;

-(void)showPropertyInfomation;

+(id)allianceUse;

@end
