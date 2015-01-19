//
//  PR_ProtectionProxy.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "PR_ProtectionProxy.h"
#import "PR_RealSubject.h"

@interface PR_ProtectionProxy ()

@property (strong, nonatomic) PR_RealSubject *realSubject;

@end

@implementation PR_ProtectionProxy

- (void)request {
    if (_realSubject == nil) {
        _realSubject = [PR_RealSubject new];
    }
    [_realSubject request];
}

- (void)pp_requestWithAccess:(int)access {
    if (access >= 10) {
        [self request];
    }
    else {
        NSLog(@"Sorry, you cannot request to real subject");
    }
}

@end
