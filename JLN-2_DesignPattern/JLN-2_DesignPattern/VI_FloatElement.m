//
//  VI_FloatElement.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/30.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "VI_FloatElement.h"
#import "VI_Visitor.h"

@interface VI_FloatElement ()

@property (assign, nonatomic) CGFloat value;

@end

@implementation VI_FloatElement

- (instancetype)initWithValue:(CGFloat)value {
    self = [super init];
    if (self) {
        _value = value;
    }
    return self;
}

- (CGFloat)floatValue {
    return _value;
}

- (void)accept:(id<VI_Visitor>)visitor {
    [visitor visitFloatElement:self];
}

@end
