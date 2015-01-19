//
//  MD_ColleagueA.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MD_ColleagueA : NSObject

- (void)requestToColleagueB;
- (void)requestToColleagueC;

- (void)colleagueChanged;
- (void)receiveNotification;

@end
