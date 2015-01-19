//
//  PR_RealSubject.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "PR_RealSubject.h"

@implementation PR_RealSubject

- (void)request {
    NSLog(@"%@: %s", [self className], __func__);
}

@end
