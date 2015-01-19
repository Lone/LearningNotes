//
//  MD_ColleagueC.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "MD_ColleagueC.h"
#import "MD_Mediator.h"

@implementation MD_ColleagueC

- (void)requestToColleagueA {
    MD_Mediator *mediator = [MD_Mediator sharedInstance];
    [mediator notifyColleagueA];
}

- (void)requestToColleagueB {
    MD_Mediator *mediator = [MD_Mediator sharedInstance];
    [mediator notifyColleagueB];
}

- (void)colleagueChanged {
    MD_Mediator *mediator = [MD_Mediator sharedInstance];
    [mediator colleagueChanged:self];
}

- (void)receiveNotification {
    NSLog(@"%@ %s", [self className], __func__);
}

@end
