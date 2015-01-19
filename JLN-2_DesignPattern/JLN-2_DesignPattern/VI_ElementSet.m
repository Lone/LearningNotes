//
//  VI_ElementSet.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/30.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "VI_ElementSet.h"

@interface VI_ElementSet ()

@property (strong, nonatomic) NSMutableSet *elements;

@end

@implementation VI_ElementSet

- (instancetype)init {
    self = [super init];
    if (self) {
        _elements = [NSMutableSet set];
    }
    return self;
}

- (NSSet *)allElements {
    return [_elements copy];
}

- (void)addElement:(id<VI_Visitable>)elem {
    [_elements addObject:elem];
}

@end
