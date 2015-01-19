//
//  VI_ConcreteVisitor.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/30.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "VI_ConcreteVisitor.h"
#import "VI_StringElement.h"
#import "VI_FloatElement.h"
#import "VI_ElementSet.h"

@implementation VI_ConcreteVisitor

- (void)visitStringElement:(VI_StringElement *)stringElement {
    NSLog(@"%s : %@", __func__, [stringElement stringValue]);
}

- (void)visitFloatElement:(VI_FloatElement *)floatElement {
    NSLog(@"%s : %f", __func__, [floatElement floatValue]);
}

- (void)visitElementSet:(VI_ElementSet *)set {
    NSSet *elements = [set allElements];
    for (id elem in elements) {
        if ([elem isKindOfClass:[VI_StringElement class]]) {
            [self visitStringElement:elem];
        }
        else if ([elem isKindOfClass:[VI_FloatElement class]]) {
            [self visitFloatElement:elem];
        }
        else {
            NSLog(@"Visit Failed: Unknown Element Type");
        }
    }
}

@end
