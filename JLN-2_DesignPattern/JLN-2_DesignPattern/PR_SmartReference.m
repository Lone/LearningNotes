//
//  PR_SmartReference.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "PR_SmartReference.h"
#import "PR_RealSubject.h"

@interface PR_SmartReference ()

@property (strong, nonatomic) PR_RealSubject *realSubject;
@property (assign, nonatomic) int referenceCount;

@end

@implementation PR_SmartReference

- (void)sr_init {
    if (_realSubject == nil) {
        self.realSubject = [PR_RealSubject new];
        self.referenceCount = 1;
    }
}

- (void)sr_copy {
    if (_realSubject == nil) {
        NSLog(@"Error: object uninitialize");
        
        return;
    }
    _referenceCount++;
}

- (void)sr_retain {
    if (_realSubject == nil) {
        NSLog(@"Error: object uninitialize");
        
        return;
    }
    _referenceCount++;
}

- (void)sr_release {
    if (_realSubject == nil) {
        NSLog(@"Error: object released");
        
        return;
    }
    _referenceCount--;
    
    if (_referenceCount == 0) {
        _realSubject = nil;
    }
}

- (int)sr_retainCount {
    return _referenceCount;
}

- (void)sr_logRetainCount {
    NSLog(@"retain count = %d", _referenceCount);
}

- (void)request {
    if (_realSubject == nil) {
        [self sr_init];
    }
    [_realSubject request];
}

- (void)sr_request {
    [self request];
}

@end
