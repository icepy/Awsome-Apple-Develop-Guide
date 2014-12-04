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
