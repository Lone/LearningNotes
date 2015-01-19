//
//  DE_Decorator.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "DE_Decorator.h"

@implementation DE_Decorator

- (void)beforeOperation {
    NSLog(@"Before %@ --- %@ Operation", [super className], [self className]);

}

- (void)afterOperation {
    NSLog(@"After %@ --- %@ Operation", [super className], [self className]);
}

- (void)operation {
    [self beforeOperation];
    [self.component operation];
    [self afterOperation];
}

@end
