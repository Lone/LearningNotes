//
//  MD_Client.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "MD_Client.h"
#import "MD_Mediator.h"
#import "MD_ColleagueA.h"
#import "MD_ColleagueB.h"
#import "MD_ColleagueC.h"

@implementation MD_Client

- (void)colleaguesChat {
    MD_ColleagueA *colleagueA = [MD_ColleagueA new];
    MD_ColleagueB *colleagueB = [MD_ColleagueB new];
    MD_ColleagueC *colleagueC = [MD_ColleagueC new];
    MD_Mediator *mediator = [MD_Mediator new];
    
    [mediator registerColleague:colleagueA];
    [mediator registerColleague:colleagueB];
    [mediator registerColleague:colleagueC];
    
    NSLog(@"** Request **");
    [colleagueA requestToColleagueB];
    [colleagueB requestToColleagueC];
    [colleagueC requestToColleagueA];
    
    NSLog(@"** Value Changed **");
    [colleagueA colleagueChanged];
}

@end
