//
//  FM_Client.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/26.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "FM_Client.h"
#import "FM_ConcreteCreatorA.h"
#import "FM_ConcreteCreatorB.h"
#import "FM_ConcreteProductA.h"
#import "FM_ConcreteProductB.h"

@implementation FM_Client

- (void)createProductA {
    FM_ConcreteCreatorA *creatorA = [FM_ConcreteCreatorA new];
    FM_ConcreteProductA *productA = [creatorA fm_product];
    NSLog(@"Product A Price = %f", [productA fm_price]);
}

- (void)createProductB {
    FM_ConcreteCreatorB *creatorB = [FM_ConcreteCreatorB new];
    FM_ConcreteProductB *productB = [creatorB fm_product];
    NSLog(@"Product B Price = %f", [productB fm_price]);
}

@end
