//
//  BR_CarBuilder.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BR_Car;

@interface BR_CarBuilder : NSObject

- (void)buildGlass;
- (void)buildEngine;
- (void)buildWheel;

@property (strong, nonatomic) BR_Car *car;
- (BR_Car *)getProduct;

@end
