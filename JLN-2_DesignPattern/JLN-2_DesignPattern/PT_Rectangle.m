//
//  PT_Rectangle.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "PT_Rectangle.h"

@implementation PT_Rectangle

- (instancetype)copyWithZone:(NSZone *)zone {
    PT_Rectangle *rect = [[PT_Rectangle allocWithZone:zone] init];
    rect.width = self.width;
    rect.height = self.height;
    return rect;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@, width = %f, height = %f", [self class], _width, _height];
}

@end
