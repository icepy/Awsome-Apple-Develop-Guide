//
//  test.h
//  c
//
//  Created by xiangwenwen on 14/12/3.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

#ifndef __c__test__
#define __c__test__


#endif /* defined(__c__test__) */


struct Comp
{
    int age;
    char *name;
    float height;
};

static void ccccc();

void test1();

//结构体传的是值
void structParamValue(struct Comp comp);

//传指针结构体变量
void structParam(struct Comp *com);