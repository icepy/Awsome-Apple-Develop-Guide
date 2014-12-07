//
//  Person.h
//  class
//
//  Created by xiangwenwen on 14/12/1.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

#ifndef class_Person_h
#define class_Person_h


#endif


/*
    @interface 申明一个类，冒号后是继承至NSObject
 
 */

@interface Person : NSObject
{
    // 这里称之为成员变量
    int age;
    NSString *name;
    NSString *gender;
}

/*
    设置一个初始化方法
 
    - 描述一个实例方法
    (id) 返回值类型
    initWithName 方法名称
    (NSString *) 参数类型
    name 参数名称
    NewGender 方法标签，用于第二个参数跟:冒号起始后面跟参数类型，参数名
 */
-(id) initWithName:(NSString *) name NewGender:(NSString *) gender;

-(void) sayHi;

// setter name
-(void) setName:(NSString *)_name;

// getter name
-(NSString *) getName;

@end

void testfunc();