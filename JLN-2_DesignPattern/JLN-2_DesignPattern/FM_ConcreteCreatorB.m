//
//  FM_ConcreteCreatorB.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/26.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "FM_ConcreteCreatorB.h"
#import "FM_ConcreteProductB.h"

@implementation FM_ConcreteCreatorB

- (FM_ConcreteProductB *)fm_product {
    return [[FM_ConcreteProductB alloc] initWithPrice:200.0f];
}

@end
