//
//  BG_Window.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "BG_Window.h"
#import "BG_WindowImp.h"

@implementation BG_Window

- (instancetype)init {
    self = [super init];
    if (self) {
        _imp = [BG_WindowImp new];
    }
    return self;
}

- (void)drawText {
    [_imp impDrawText];
    NSLog(@"Finish Drawing Text");
}

- (void)drawRect {
    [_imp impDrawLine];
    [_imp impDrawLine];
    [_imp impDrawLine];
    [_imp impDrawLine];
    NSLog(@"Finish Drawing Rectangle");
}

@end
