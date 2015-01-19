//
//  MD_Mediator.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "MD_Mediator.h"
#import "MD_ColleagueA.h"
#import "MD_ColleagueB.h"
#import "MD_ColleagueC.h"

@interface MD_Mediator ()

@property (strong, nonatomic) NSMutableDictionary *colleagues;

@end

@implementation MD_Mediator

#pragma mark - Singleton

+ (instancetype)sharedInstance {
    static MD_Mediator *instance = nil;
    static dispatch_once_t onceToken = 0;
    dispatch_once(&onceToken, ^{
        instance = [[super allocWithZone:NULL] init];
        instance.colleagues = [NSMutableDictionary dictionary];
    });
    
    return instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return [self sharedInstance];
}

- (instancetype)copyWithZone:(NSZone *)zone {
    return self;
}

#pragma mark - Register and Observe

- (void)registerColleague:(id)colleague {
    if ([colleague isKindOfClass:[MD_ColleagueA class]]) {
        _colleagues[@"A"] = colleague;
    }
    else if ([colleague isKindOfClass:[MD_ColleagueB class]]) {
        _colleagues[@"B"] = colleague;
    }
    else if ([colleague isKindOfClass:[MD_ColleagueC class]]) {
        _colleagues[@"C"] = colleague;
    }
    else {
        
    }
}

- (void)colleagueChanged:(id)colleague {
    if ([colleague isKindOfClass:[MD_ColleagueA class]]) {
        [self notifyColleagueB];
        [self notifyColleagueC];
    }
    else if ([colleague isKindOfClass:[MD_ColleagueB class]]) {
        [self notifyColleagueA];
        [self notifyColleagueC];
    }
    else if ([colleague isKindOfClass:[MD_ColleagueC class]]) {
        [self notifyColleagueA];
        [self notifyColleagueB];
    }
    else {
        
    }
}

#pragma mark - Notify

- (void)notifyColleagueA {
    MD_ColleagueA *colleagueA = _colleagues[@"A"];
    [colleagueA receiveNotification];
}

- (void)notifyColleagueB {
    MD_ColleagueB *colleagueB = _colleagues[@"B"];
    [colleagueB receiveNotification];
}

- (void)notifyColleagueC {
    MD_ColleagueC *colleagueC = _colleagues[@"C"];
    [colleagueC receiveNotification];
}

@end
