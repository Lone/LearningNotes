//
//  FW_NumberFactory.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "FW_NumberFactory.h"
#import "FW_Number.h"

@interface FW_NumberFactory ()

@property (strong, nonatomic) NSMutableDictionary *flyweightPool;

@end

@implementation FW_NumberFactory

- (instancetype)init {
    self = [super init];
    if (self) {
        _flyweightPool = [NSMutableDictionary dictionary];
    }
    return self;
}

- (FW_Number *)numberWithInt:(int)num {
    if (num < 0 || num > 9) {
        NSLog(@"Invalid Number");
        
        return nil;
    }
    else {
        NSString *key = [NSString stringWithFormat:@"%d", num];
        if (_flyweightPool[key] == nil) {
            FW_Number *number = [[FW_Number alloc] initWithInt:num];
            if (number != nil) {
                _flyweightPool[key] = number;
            }
        }
        
        return _flyweightPool[key];
    }
}

- (int)flyweightPoolSize {
    return (int)[[_flyweightPool allKeys] count];
}

@end
