//
//  Person.m
//  class
//
//  Created by xiangwenwen on 14/12/1.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

/*
 
 @implementation 来实现一个类
 
 */

@implementation Person

-(id)initWithName:(NSString *)_name NewGender:(NSString *) _gender
{
    self = [super init];
    if(self){
        name = _name;
        gender = _gender;
    }
    return self;
}

-(void) sayHi
{
    NSLog(@"hello %@",name);
    NSLog(@"im %@",gender);
}

-(void)setName:(NSString *)_name
{
    name = _name;
}

-(NSString *) getName
{
    return  name;
}

@end