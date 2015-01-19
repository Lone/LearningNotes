//
//  IT_Client.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "IT_Client.h"

@implementation IT_Client

- (void)iterateArray {
    NSMutableArray *marray = [NSMutableArray array];
    [marray addObject:@1];
    [marray addObject:@"Hello"];
    [marray addObject:@10.0];
    [marray addObject:@[]];
    [marray addObject:@{}];
    [marray addObject:@[@100]];
    for (id element in marray) {
        NSLog(@"%d : %@", (int)[marray indexOfObject:element], element);
    }
}

- (void)iterateDictionary {
    NSMutableDictionary *mdict = [NSMutableDictionary dictionary];
    [mdict setObject:@1 forKey:@"One"];
    [mdict setObject:@"Hello" forKey:@"Two"];
    [mdict setObject:@10.0 forKey:@"Three"];
    [mdict setObject:@[] forKey:@"Four"];
    [mdict setObject:@{} forKey:@"Five"];
    [mdict setObject:@[@100] forKey:@"Six"];
    for (id key in mdict) {
        NSLog(@"<%p> %@ : %@", key, key, mdict[key]);
    }
}

@end
