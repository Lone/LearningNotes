//
//  BR_Car.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BR_Glass;
@class BR_Engine;
@class BR_Wheel;

@interface BR_Car : NSObject

@property (strong, nonatomic) BR_Glass  *glass;
@property (strong, nonatomic) BR_Engine *engine;
@property (strong, nonatomic) BR_Wheel  *wheel;

@end
