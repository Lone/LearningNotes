//
//  BR_USACarBuilder.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "BR_USACarBuilder.h"
#import "BR_Car.h"
#import "BR_USAGlass.h"
#import "BR_USAEngine.h"
#import "BR_USAWheel.h"

@implementation BR_USACarBuilder

- (void)buildGlass {
    self.car.glass = [BR_USAGlass new];
}

- (void)buildEngine {
    self.car.engine = [BR_USAEngine new];
}

- (void)buildWheel {
    self.car.wheel = [BR_USAWheel new];
}

@end
