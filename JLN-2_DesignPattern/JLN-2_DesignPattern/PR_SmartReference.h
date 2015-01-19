//
//  PR_SmartReference.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PR_Subject.h"

@interface PR_SmartReference : NSObject <PR_Subject>

- (void)sr_init;
- (void)sr_copy;
- (void)sr_retain;
- (void)sr_release;
- (int)sr_retainCount;
- (void)sr_logRetainCount;

- (void)sr_request;

@end
