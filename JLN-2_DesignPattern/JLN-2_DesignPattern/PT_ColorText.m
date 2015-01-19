//
//  PT_ColorText.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "PT_ColorText.h"

@implementation PT_ColorText

- (instancetype)copyWithZone:(NSZone *)zone {
    PT_ColorText *colorText = [[PT_ColorText allocWithZone:zone] init];
    colorText.color = [self.color copy];
    colorText.text = [self.text copy];
    return colorText;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@, color = %@, text = %@", [self class], _color, _text];
}

@end
