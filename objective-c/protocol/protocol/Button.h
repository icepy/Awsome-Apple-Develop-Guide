//
//  Button.h
//  protocol
//
//  Created by xiangwenwen on 14/12/7.
//  Copyright (c) 2014年 xiangwenwen. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Buttondelegate;

@interface Button : NSObject
//遵守这个协议
@property(nonatomic,retain) id<Buttondelegate> bDelegate;

-(void)onClickMe;

@end

//声明一个协议
@protocol Buttondelegate <NSObject>

-(void)onclick:(Button *)btn;

@end