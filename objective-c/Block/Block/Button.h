//
//  Button.h
//  Block
//
//  Created by xiangwenwen on 14/12/7.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

#import <Foundation/Foundation.h>
//提前声明Button类
@class Button;

//声明一个block类型
typedef void (^butdelegate)(Button *but);

@interface Button : NSObject

//用一个属性接收一个block
@property (nonatomic,assign) butdelegate butblock;

-(void)onclick;

@end
