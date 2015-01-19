//
//  FW_Number.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "FW_Number.h"

@interface FW_Number ()

@property (assign, nonatomic) int value;

@end

@implementation FW_Number

- (instancetype)initWithInt:(int)num {
    self = [super init];
    if (self) {
        _value = num;
    }
    return self;
}

- (int)numberValue {
    return _value;
}

@end
