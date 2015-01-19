//
//  ADInstance_Calculator.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "ADInstance_Calculator.h"
#import "ADInstance_AddCalculator.h"
#import "ADInstance_MinusCalculator.h"

@interface ADInstance_Calculator ()

@property (strong, nonatomic) ADInstance_AddCalculator *addCalculator;
@property (strong, nonatomic) ADInstance_MinusCalculator *minusCalculator;

@end

@implementation ADInstance_Calculator

- (instancetype)init {
    self = [super init];
    if (self) {
        _addCalculator = [ADInstance_AddCalculator new];
        _minusCalculator = [ADInstance_MinusCalculator new];
    }
    return self;
}

- (int)add:(int)a to:(int)b {
    return [_addCalculator otherAdd:a to:b];
}

- (int)minus:(int)a with:(int)b {
    return [_minusCalculator otherMinus:a with:b];
}

@end
