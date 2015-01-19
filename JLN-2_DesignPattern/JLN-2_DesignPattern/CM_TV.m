//
//  CM_TV.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "CM_TV.h"

@interface CM_TV ()

@property (assign, nonatomic) int channel;
@property (assign, nonatomic) BOOL isOn;

@end

@implementation CM_TV

- (void)changeChannel:(int)channel {
    self.channel = channel;
    NSLog(@"切换频道到: %d", channel);
    NSLog(@"%@", self);
}

- (void)turnOn {
    self.isOn = YES;
    NSLog(@"打开电视");
    NSLog(@"%@", self);
}

- (void)turnOff {
    self.isOn = NO;
    NSLog(@"关闭电视");
    NSLog(@"%@", self);
}

- (NSString *)description {
    return [NSString stringWithFormat:@"channel = %d, isOn = %d", _channel, _isOn];
}

@end
