//
//  BR_CarBuilder.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "BR_CarBuilder.h"
#import "BR_Car.h"

@implementation BR_CarBuilder

- (instancetype)init {
    self = [super init];
    if (self) {
        _car = [BR_Car new];
    }
    return self;
}

- (void)buildGlass {
    
}

- (void)buildEngine {
    
}

- (void)buildWheel {
    
}

- (BR_Car *)getProduct {
    [self buildGlass];
    [self buildEngine];
    [self buildWheel];
    
    return _car;
}

@end
