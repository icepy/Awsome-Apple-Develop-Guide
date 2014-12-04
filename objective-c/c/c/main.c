//
//  main.c
//  c
//
//  Created by xiangwenwen on 14/12/2.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

#include <stdio.h>
#include <string.h>
#include "ctrloutput.h"
#include "test.h"

void test();




int main(int argc, const char * argv[]) {
    // insert code here...
    
//    array1();
    
//    int g[2] = {2,4};
//    printf("g[0]=%d\n",g[0]);
//    //传入地址参数
//    arrayParam1(g);
//    printf("g[0]=%d\n",g[0]);
    
//    twodArray();
    
    //字符串
//    createString();
    
    //字符串处理函数
    
    //字符串的个数
//    int len = strlen("mf");
//    printf("%d\n",len);
//    
//    //把左边的字符串复制到右边
//    char str[10];
//    strcpy(str, "github");
//    printf("%s\n",str);
//    
//    //拼接字符串
//    char str1[10] = "git";
//    strcat(str1, "hub");
//    printf("%s\n",str1);
    
    /*
        存储变量地址的变量叫指针变量
     
        所谓指针可以理解为，取出存储的地址，间接的操作该地址的存储空间
     
     */
//    int a;
//    //声明一个指针变量b把a的地址存储到b的存储空间中
//    int *b = &a;
//    //通过指针变量间接的操作a的存储空间，赋值为10
//    *b = 10;
//    printf("%d",a);
    
//    int ars[3] = {1,2,3};
//    int *p = ars;
//    
//    forEach(p);
//    int sums  = func(10, 5, sum);
//    printf("%d\n",sums);
//    test();
//    test1();
    
    //普通的结构体
    struct Comp comp = {26,"lcepy",1.73};
    printf("age=%d\n",comp.age);
    
    //数组类型的结构体
    struct Comp comps[2] = {{26,"lcepy",1.73},{25,"wen",1.72}};
    printf("name=%s\n",comps[0].name);
    
    structParamValue(comp);
    printf("函数外部age=%d\n",comp.age);
    
    //定义一个结构体指针变量
    struct Comp *com;
    com = &comp;
    structParam(com);
    printf("改变的age=%d\n",(*com).age);
    printf("改变的age=%d\n",com->age);
    
    return 0;
    
}

void test()
{
    printf("实现test函数\n");
}
