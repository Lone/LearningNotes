//
//  FW_NumberFactory.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FW_Number;

@interface FW_NumberFactory : NSObject

- (FW_Number *)numberWithInt:(int)num;
- (int)flyweightPoolSize;

@end
