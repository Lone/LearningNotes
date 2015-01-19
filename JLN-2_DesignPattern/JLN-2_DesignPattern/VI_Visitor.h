//
//  VI_Visitor.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/30.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VI_Visitable.h"

@protocol VI_Visitor <NSObject>

- (void)visitStringElement:(id<VI_Visitable>)stringElement;
- (void)visitFloatElement:(id<VI_Visitable>)floatElement;

@end
