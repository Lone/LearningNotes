//
//  FA_Client.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "FA_Client.h"
#import "FA_Compiler.h"

@implementation FA_Client

- (void)compileOperation {
    FA_Compiler *compiler = [FA_Compiler new];
    [compiler compile];
}

@end
