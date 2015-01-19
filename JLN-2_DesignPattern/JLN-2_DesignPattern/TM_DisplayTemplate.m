//
//  TM_DisplayTemplate.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/30.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "TM_DisplayTemplate.h"

@implementation TM_DisplayTemplate

- (void)display {
    [self open];
    for (int i = 0; i < 5; i++) {
        [self print];
    }
    [self close];
}

- (void)open {
    [_displayer open];
}

- (void)print {
    [_displayer print];
}

- (void)close {
    [_displayer close];
}

@end
