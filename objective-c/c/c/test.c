//
//  test.c
//  c
//
//  Created by xiangwenwen on 14/12/3.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

#include "test.h"


//内部函数，只允许这个源文件使用

static void ccccc()
{
    printf("ccccc调用\n");
}

void test1()
{
    ccccc();
}
void structParamValue(struct Comp comp)
{
    comp.age = 24;
    printf("函数内age=%d\n",comp.age);
}

void structParam(struct Comp *com)
{
    (*com).age = 24;
}

void useTypedef()
{
    //类型别名，实际上是一个新的类型，这个类型与int是相同的
    typedef int Interge;
    Interge a = 12;
    
    //结构体起一个别名
    typedef struct{
        int age;
        char *name
    } Pserson;
    Pserson p = {12,"lcepy"};
    
    //给指针起一个别名
    typedef char * String;
    String myName = "lcepy";
    
    
    //给指针指向结构体用一个别名描述
    typedef struct{
        int age;
        char *name
    } * Psersons;
    
    Psersons pser = &p;
//    pser->age;
    
    //给指针指向的函数，用一个别名描述
    typedef void (*structParams)(struct Comp *com);
    
    structParams stp = structParam;
    (*stp)(pser);
}
