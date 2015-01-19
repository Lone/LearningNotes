//
//  ADInstance_Operation.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ADInstance_Operation <NSObject>

- (int)add:(int)a to:(int)b;
- (int)minus:(int)a with:(int)b;

@end
