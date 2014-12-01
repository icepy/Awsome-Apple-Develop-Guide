//
//  main.m
//  class
//
//  Created by xiangwenwen on 14/12/1.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    //实例化一个类 自定义初始化
    Person *ren = [[Person alloc] initWithName:@"lcepy" NewGender:@"爷们"];
    //给sayHi发送一个消息
    [ren sayHi];
    //获取name
    NSString * inputName = [ren getName];
    NSLog(@"%@",inputName);
    //设置一个name
    [ren setName:@"wen"];
    [ren sayHi];
    return 0;
}
