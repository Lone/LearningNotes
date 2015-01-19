//
//  MD_ColleagueB.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MD_ColleagueB : NSObject

- (void)requestToColleagueA;
- (void)requestToColleagueC;

- (void)colleagueChanged;
- (void)receiveNotification;

@end
