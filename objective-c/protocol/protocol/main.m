//
//  main.m
//  protocol
//
//  Created by xiangwenwen on 14/12/7.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
    理解protocol 协议的部分
 
    设计一个按钮button，当用户点击按钮时（模拟），根据代理来实现协议的某个方法
 
    oc里面协议不要求全部实现
 
    协议一般根具体类声明在一起，可以通过属性来设置一个具体的协议实现
 
    把点击具体的对象当返回值给返回，可以用来区别按钮
 
 */
#import "Button.h"
#import "ButtonDelegate.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //初始化一个Button
        Button *button = [[[Button alloc] init] autorelease];
        //初始化一个代理
        ButtonDelegate *butdelegate = [[[ButtonDelegate alloc] init] autorelease];
        button.bDelegate = butdelegate;
        //初始化第二个Button
        Button *button2 = [[[Button alloc] init] autorelease];
        button2.bDelegate = butdelegate;
        //点击自己
        [button onClickMe];
        [button2 onClickMe];
    }
    return 0;
}