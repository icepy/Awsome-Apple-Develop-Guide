//
//  main.m
//  Block
//
//  Created by xiangwenwen on 14/12/7.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Button.h"
/*
    block 给我的感觉就像js里的callback 回调函数
 
    依然是通过一个Button来学习如何使用它，用它还可以使用一些之前学习的如typedef 搞个简化版之类的，而它的语法根在C语言中的声明一个函数指针变量类似，把*换成^即可。
 
 */

typedef int(^SUM)(int,int);

void testBlock1()
{
    int (^sum)(int,int) = ^(int a,int b){
        return a+b;
    };
    int sums = sum(10,20);
    NSLog(@"%i",sums);
}

void testBlock2()
{
    SUM _sum = ^(int a,int b){
        return a+b;
    };
    int sums = _sum(10,4);
    NSLog(@"%i",sums);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        testBlock1();
//        testBlock2();
        Button *button = [[[Button alloc] init] autorelease];
        button.butblock = ^(Button *but){
            NSLog(@"点击了%@",but);
        };
        [button onclick];
        
        Button *button1 = [[[Button alloc] init] autorelease];
        button1.butblock = ^(Button *but){
            NSLog(@"button1点击了%@",but);
        };
        [button1 onclick];
    }
    return 0;
}
