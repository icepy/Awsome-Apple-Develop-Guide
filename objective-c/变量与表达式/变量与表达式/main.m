//
//  main.m
//  变量与表达式
//
//  Created by xiangwenwen on 14/11/30.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a,b,c;
        a = 1;
        b = 2;
        
        //+运算符
        c = a+b;
        NSLog(@"a+b，c= %d",c);
        
        //-运算符
        c = a-b;
        NSLog(@"a-b c= %d",c);
        
        //*运算符
        c = a*b;
        NSLog(@"a*b c= %d",c);
        
        // /运算符
        c = a/b;
        NSLog(@"a/b c= %d",c); // 0 ? 20除以30 结果没有达到预期
    
       /*
            主要是学习了几个基本数据类型，如int float double char等
        
            上面相除时，未达预期，是因为变量声明时为int类型，而20除以30，并不能编译器会自动转换成int
        
            所以成为0了，要解决这个问题，需要转换类型
        */
        
        float d;
        d = (float)a / (float)b;
        NSLog(@"%f",d);
       
        
        // 三元运算符
        bool ctrl;
        int t = 0;
        ctrl = true;
        ctrl ? t = 2 : t;
        NSLog(@"%d",t);
        
        /*
         逻辑运算符
            >   大于
            <   小于
            ==  是否等于
            !=  不等于
            >=  大于等于
            <=  小于等于
         */
        if (a > b) {
            NSLog(@"a>b");
        }
        
        if(a<b){
            NSLog(@"a<b");
        }
        
        if(a !=b){
            NSLog(@"a!=b");
        }
    }
    return 0;
}
