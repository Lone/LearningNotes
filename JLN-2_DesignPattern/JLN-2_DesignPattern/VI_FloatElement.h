//
//  VI_FloatElement.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/30.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VI_Visitable.h"

@interface VI_FloatElement : NSObject <VI_Visitable>

- (instancetype)initWithValue:(CGFloat)value;
- (CGFloat)floatValue;

@end
