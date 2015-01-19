//
//  ADClass_Client.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "ADClass_Client.h"
#import "ADClass_SienceCalculator.h"

@implementation ADClass_Client

- (void)scienceCalculateAdd:(int)a to:(int)b {
    ADClass_SienceCalculator *scienceCalculator = [ADClass_SienceCalculator new];
    int c = [scienceCalculator add:a to:b];
    NSLog(@"%d", c);
}

@end
