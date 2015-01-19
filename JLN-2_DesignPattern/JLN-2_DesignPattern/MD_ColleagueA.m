//
//  MD_ColleagueA.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "MD_ColleagueA.h"
#import "MD_Mediator.h"

@implementation MD_ColleagueA

- (void)requestToColleagueB {
    MD_Mediator *mediator = [MD_Mediator sharedInstance];
    [mediator notifyColleagueB];
}

- (void)requestToColleagueC {
    MD_Mediator *mediator = [MD_Mediator sharedInstance];
    [mediator notifyColleagueC];
}

- (void)colleagueChanged {
    MD_Mediator *mediator = [MD_Mediator sharedInstance];
    [mediator colleagueChanged:self];
}

- (void)receiveNotification {
    NSLog(@"%@ %s", [self className], __func__);
}

@end
