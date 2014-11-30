//
//  main.m
//  循环
//
//  Created by xiangwenwen on 14/11/30.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        // while 循环
        int i = 0;
        while (i<5) {
            i++;
            NSLog(@"hello world");
        }
        
        // for 循环
        for (int k; k<5; k++) {
            NSLog(@"wenwen %d",k);
        }
        
        // do while 循环
        int u = 0;
        do{
            NSLog(@"u is %d",u);
            u++;
        }while (u<5);
        
        // break  跳出循环
        int y = 0;
        for (; y<5; y++) {
            if (y==4) {
                NSLog(@"break index is %d",y);
                break;
            }
        }
        //continue
        int t = 0;
        for (; t<100; t++) {
            if(t%2==0){
                NSLog(@"coding is %d",t);
                continue;
            }
        }
    }
    return 0;
}
