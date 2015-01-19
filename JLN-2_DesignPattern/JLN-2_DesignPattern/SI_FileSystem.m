//
//  SI_FileSystem.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "SI_FileSystem.h"

@implementation SI_FileSystem

#pragma mark - Singleton

+ (instancetype)sharedInstance {
    static SI_FileSystem *instance = nil;
    static dispatch_once_t onceToken = 0;
    dispatch_once(&onceToken, ^{
        instance = [[super allocWithZone:NULL] init];
    });
    
    return instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return [self sharedInstance];
}

- (instancetype)copyWithZone:(NSZone *)zone {
    return self;
}

@end
