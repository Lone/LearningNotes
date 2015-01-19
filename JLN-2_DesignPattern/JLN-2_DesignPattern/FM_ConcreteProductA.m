//
//  FM_ConcreteProductA.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/26.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "FM_ConcreteProductA.h"

@interface FM_ConcreteProductA ()

@property (assign, nonatomic) CGFloat price;

@end

@implementation FM_ConcreteProductA

- (instancetype)initWithPrice:(CGFloat)price {
    self = [super init];
    if (self) {
        _price = price;
    }
    return self;
}

- (CGFloat)fm_price {
    return _price;
}

@end
