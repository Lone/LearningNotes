//
//  TM_StringDisplay.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/30.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "TM_StringDisplay.h"

@interface TM_StringDisplay ()

@property (strong, nonatomic) NSString *string;

@end

@implementation TM_StringDisplay

- (instancetype)initWithString:(NSString *)str {
    self = [super init];
    if (self) {
        _string = str;
    }
    return self;
}

- (void)printLine {
    int length = (int)(_string.length);
    for (int i = 0; i < length + 4; i++) {
        fprintf(stdout, "-");
    }
    fprintf(stdout, "\n");
}

- (void)open {
    [self printLine];
}

- (void)print {
    const char *str = [_string UTF8String];
    fprintf(stdout, "| %s |\n", str);
}

- (void)close {
    [self printLine];
}

@end
