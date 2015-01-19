//
//  TM_DisplayTemplate.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/30.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TM_DisplayTemplate : NSObject

@property (strong, nonatomic) TM_DisplayTemplate *displayer;

- (void)display;

- (void)open;
- (void)print;
- (void)close;

@end
