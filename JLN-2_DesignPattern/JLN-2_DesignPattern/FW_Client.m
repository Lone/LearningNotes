//
//  FW_Client.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "FW_Client.h"
#import "FW_NumberFactory.h"
#import "FW_Number.h"

@implementation FW_Client

- (void)getAllNumbers {
    FW_NumberFactory *factory = [FW_NumberFactory new];
    FW_Number *num0 = [factory numberWithInt:0];
    FW_Number *num1 = [factory numberWithInt:1];
    FW_Number *num2 = [factory numberWithInt:2];
    FW_Number *num3 = [factory numberWithInt:3];
    FW_Number *num4 = [factory numberWithInt:4];
    FW_Number *num5 = [factory numberWithInt:5];
    FW_Number *num6 = [factory numberWithInt:6];
    FW_Number *num7 = [factory numberWithInt:7];
    FW_Number *num8 = [factory numberWithInt:8];
    FW_Number *num9 = [factory numberWithInt:9];
    FW_Number *num10 = [factory numberWithInt:0];
    FW_Number *num11 = [factory numberWithInt:1];
    FW_Number *num12 = [factory numberWithInt:2];
    FW_Number *num13 = [factory numberWithInt:3];
    FW_Number *num14 = [factory numberWithInt:4];
    FW_Number *num15 = [factory numberWithInt:5];
    FW_Number *num16 = [factory numberWithInt:6];
    FW_Number *num17 = [factory numberWithInt:7];
    FW_Number *num18 = [factory numberWithInt:8];
    FW_Number *num19 = [factory numberWithInt:9];
    NSLog(@"size = %d", [factory flyweightPoolSize]);
}

@end
