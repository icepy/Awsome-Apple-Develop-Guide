//
//  main.m
//  Category
//
//  Created by xiangwenwen on 14/12/7.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Game.h"
#import "Game+build.h"

/*
    category 动态的为类添加新的方法
 
    一般来说文件命名是为谁添加新方法＋本身的名字，category可以为系统自带的对象添加新的方法，也可以用来模块化开发
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Game *mygame = [[Game alloc] init];
        [mygame gametest];
        [mygame release];
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
