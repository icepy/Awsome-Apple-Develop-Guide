//
//  main.m
//  内存管理
//
//  Created by xiangwenwen on 14/12/2.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
    OC中的内存管理使用的是引用计数的机制，当引用计数为0时，系统会自动调用dealloc
 
    实例对象中存在一个属性retainCount（整数）来记录引用计数
 
    一般而言retain描述＋1 alloc描述+1 copy描述+1 release 描述－1

    @autoreleasepool 自动释放池
 
    #####问题来了，现在不允许显示的调用retainCount了？
 
    这是因为xcode默认开启了ARC机制
 
    例子
 
    魔兽世界中存在两个阵营
 
    父类  阵营
 
            Wname
    子类  联盟
 
            角色名 WgameName
 
            等级  WgameLe
 
    查看引用计数
 
    学会使用属性
 
    简单的进行内存管理
 
 */

#import "alliance.h"

int main(int argc, const char * argv[]) {
//    @autoreleasepool {
        //属性的使用
    
    /*
     关于内存管理，现在由ARC自动管理，如果开启ARC，
     
     编译器会自动添加释放引用计数，所以命名上不要用alloc retain copy
     
     如果是手动管理，一般处理的原则是，如果有alloc retain copy等，就会存在对应的release或者autorelease
     */
//        alliance *allia = [[alliance alloc] init];
//        allia.Wname = @"联盟";
//        allia.WgameName = @"青春独醉";
//        allia.WgameLe = 92;
//        [allia showPropertyInfomation];
//        NSLog(@"引用计数为：%ld",[allia retainCount]);
//        [allia release];
//    }
    
//    @autoreleasepool {
//        alliance *alliz = [alliance allianceUse];
//        [alliz showPropertyInfomation];
//        [alliz retain];
//        NSLog(@"添加一个引用计数：%ld",[alliz retainCount]);
//        [alliz release];
//        NSLog(@"%ld",[alliz retainCount]);
//    }
    
    
    /*
        内存释放的一个原则，谁创建谁销毁
     
     */
    
    camp *idcamp = [[camp alloc] init];
    alliance *idallian = [[alliance alloc] init];
    idallian.idCamp = idcamp;
    
    NSLog(@"%ld",[idcamp retainCount]);
    
    [idcamp release];
    [idallian release];
        
    return 0;
}
