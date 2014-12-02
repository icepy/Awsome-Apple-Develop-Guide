//
//  ctrloutput.c
//  c
//
//  Created by xiangwenwen on 14/12/2.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

#include <stdio.h>
#include "ctrloutput.h"

/*
 实现文件
 
 返回值类型  函数名  行参数（参数类型 参数名）
 */

void output()
{
        printf("计算平方根：");
        int num;
        //%d 格式化占位符 & 地址符
        scanf("%d",&num);
        int count = num*num;
        printf("%d的平方根结果为：%d\n",num,count);
}

void array1()
{
    /*
     这里有一个很重要的概念，字节，地址。
     
     一个类型都会有1个或多个字节，而该类型的地址就是第一个字节的地址
     
     在传入参数时，要能分辨，到底传的是值还是地址
     
     如果是地址，他们操作的是同一个内存中的数据
     
     */
    
    int arrays[5];
    sigset_t arrsize = sizeof(arrays);
    //查看多少个字节
    printf("%d\n",arrsize);
    //查看地址  第一个字节的地址就是该变量的地址
    printf("%d\n",&arrays[0]);
    //数组名代表的是当前数组的地址
    printf("%d\n",arrays);
    arrays[0] = 1;
    arrays[1] = 2;
    arrays[2] = 3;
    arrays[3] = 4;
    arrays[4] = 5;
}

void arrayParam1(int b[])
{
    b[0] = 1;
}

void twodArray()
{
    //声明一个二维数组  按行存储，两行三列
    int ta[2][3] = {{1,2,3},{4,5,6}};
    
    printf("ta的地址：%d\n",ta);
    printf("ta的地址：%d\n",ta[0]);
    printf("ta的地址：%d\n",&ta[0][0]);
    
}

void createString()
{
    /*
        char类型的字符数组
     
        char类型的字符串
        
        puts函数可以提供换行，但是如果字符数组未加\0结束符号，会存在溢出的问题
     
     */
    char str[] = {'a','b','\0'};
    char str1 = "hello C";
//    char str2[] = {'c','d'};
    printf("%s\n",str);
    

}
