//
//  PR_Client.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "PR_Client.h"
#import "PR_SmartReference.h"
#import "PR_ProtectionProxy.h"

@implementation PR_Client

- (void)requestToSmartReference {
    PR_SmartReference *reference = [PR_SmartReference new];
    [reference sr_logRetainCount];
    [reference sr_request];
    [reference sr_logRetainCount];
    [reference sr_retain];
    [reference sr_logRetainCount];
    [reference sr_copy];
    [reference sr_logRetainCount];
    [reference sr_release];
    [reference sr_release];
    [reference sr_release];
    [reference sr_logRetainCount];
    [reference sr_release];
    [reference sr_logRetainCount];
    [reference sr_request];
    [reference sr_logRetainCount];
}

- (void)requestToProtectionProxy {
    PR_ProtectionProxy *proxy = [PR_ProtectionProxy new];
    [proxy pp_requestWithAccess:1];
    [proxy pp_requestWithAccess:12];
}

@end
