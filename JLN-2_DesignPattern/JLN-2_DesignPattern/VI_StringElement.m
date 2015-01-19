//
//  VI_StringElement.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/30.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "VI_StringElement.h"
#import "VI_Visitor.h"

@interface VI_StringElement ()

@property (strong, nonatomic) NSString *value;

@end

@implementation VI_StringElement

- (instancetype)initWithValue:(NSString *)value {
    self = [super init];
    if (self) {
        _value = value;
    }
    return self;
}

- (NSString *)stringValue {
    return _value;
}

- (void)accept:(id<VI_Visitor>)visitor {
    [visitor visitStringElement:self];
}

@end
