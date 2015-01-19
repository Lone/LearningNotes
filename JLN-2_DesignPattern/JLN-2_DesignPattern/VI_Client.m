//
//  VI_Client.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/30.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "VI_Client.h"
#import "VI_StringElement.h"
#import "VI_FloatElement.h"
#import "VI_ElementSet.h"
#import "VI_ConcreteVisitor.h"

@implementation VI_Client

- (void)visitAllElements {
    VI_StringElement *stringElement = [[VI_StringElement alloc] initWithValue:@"Hello"];
    VI_FloatElement *floatElement = [[VI_FloatElement alloc] initWithValue:10.0f];
    
    VI_ElementSet *elements = [VI_ElementSet new];
    [elements addElement:stringElement];
    [elements addElement:floatElement];
    
    VI_ConcreteVisitor *visitor = [VI_ConcreteVisitor new];
    [visitor visitElementSet:elements];
}

@end
