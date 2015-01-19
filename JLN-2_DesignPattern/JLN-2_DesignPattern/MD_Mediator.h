//
//  MD_Mediator.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MD_Mediator : NSObject

+ (instancetype)sharedInstance;

- (void)registerColleague:(id)colleague;
- (void)colleagueChanged:(id)colleague;

- (void)notifyColleagueA;
- (void)notifyColleagueB;
- (void)notifyColleagueC;

@end
