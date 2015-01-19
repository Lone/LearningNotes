//
//  ADInstance_Client.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "ADInstance_Client.h"
#import "ADInstance_Calculator.h"

@implementation ADInstance_Client

- (void)calculator_addOperation {
    ADInstance_Calculator *calculator = [ADInstance_Calculator new];
    NSLog(@"%d", [calculator add:100 to:100]);
}

- (void)calculator_minusOperation {
    ADInstance_Calculator *calculator = [ADInstance_Calculator new];
    NSLog(@"%d", [calculator minus:100 with:10]);
}

@end
