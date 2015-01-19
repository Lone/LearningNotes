//
//  TM_Client.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/30.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "TM_Client.h"
#import "TM_DisplayTemplate.h"
#import "TM_CharDisplay.h"
#import "TM_StringDisplay.h"

@implementation TM_Client

- (void)displayChar {
    TM_CharDisplay *charDisplayer = [[TM_CharDisplay alloc] initWithChar:'F'];
    TM_DisplayTemplate *template = [TM_DisplayTemplate new];
    template.displayer = charDisplayer;
    [template display];
}

- (void)displayString {
    TM_StringDisplay *stringDisplayer = [[TM_StringDisplay alloc] initWithString:@"Hello"];
    TM_DisplayTemplate *template = [TM_DisplayTemplate new];
    template.displayer = stringDisplayer;
    [template display];
}

@end
