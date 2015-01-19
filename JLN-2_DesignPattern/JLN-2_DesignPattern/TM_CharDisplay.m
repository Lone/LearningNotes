//
//  TM_CharDisplay.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/30.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "TM_CharDisplay.h"

@interface TM_CharDisplay ()

@property (assign, nonatomic) char c;

@end

@implementation TM_CharDisplay

- (instancetype)initWithChar:(char)c {
    self = [super init];
    if (self) {
        _c = c;
    }
    return self;
}

- (void)open {
    fprintf(stdout, "<<");
}

- (void)print {
    fprintf(stdout, "%c", _c);
}

- (void)close {
    fprintf(stdout, ">>\n");
}

@end
