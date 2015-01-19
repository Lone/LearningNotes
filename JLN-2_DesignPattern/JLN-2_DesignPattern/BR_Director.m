//
//  BR_Director.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "BR_Director.h"
#import "BR_Car.h"
#import "BR_CarBuilder.h"

@interface BR_Director ()

@property (strong, nonatomic) BR_CarBuilder *builder;

@end

@implementation BR_Director

- (instancetype)initWithCarBuilder:(BR_CarBuilder *)builder {
    self = [super init];
    if (self) {
        _builder = builder;
    }
    return self;
}

- (BR_Car *)construct {
    return [_builder getProduct];
}

@end
