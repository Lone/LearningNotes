//
//  BR_JPNCarBuilder.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "BR_JPNCarBuilder.h"
#import "BR_Car.h"
#import "BR_JPNGlass.h"
#import "BR_JPNEngine.h"
#import "BR_JPNWheel.h"

@implementation BR_JPNCarBuilder

- (void)buildGlass {
    self.car.glass = [BR_JPNGlass new];
}

- (void)buildEngine {
    self.car.engine = [BR_JPNEngine new];
}

- (void)buildWheel {
    self.car.wheel = [BR_JPNWheel new];
}

@end
