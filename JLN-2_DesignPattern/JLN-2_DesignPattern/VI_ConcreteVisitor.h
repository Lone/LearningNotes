//
//  VI_ConcreteVisitor.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/30.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VI_Visitor.h"

@class VI_ElementSet;

@interface VI_ConcreteVisitor : NSObject <VI_Visitor>

- (void)visitElementSet:(VI_ElementSet *)set;

@end
