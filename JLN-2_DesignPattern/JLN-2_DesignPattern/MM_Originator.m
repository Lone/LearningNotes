//
//  MM_Originator.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/30.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "MM_Originator.h"
#import "MM_Memento.h"
#import "MM_Memento+Protection.h"

@interface MM_Originator ()

@property (assign, nonatomic) int originalState;

@end

@implementation MM_Originator

- (MM_Memento *)createMementoWithState:(int)state {
    MM_Memento *memento = [MM_Memento new];
    memento.state = state;
    self.originalState = state;
    return memento;
}

- (void)updateMemento:(MM_Memento *)memento withState:(int)state {
    memento.state = state;
}

- (MM_Memento *)resetMemento {
    return [self createMementoWithState:_originalState];
}

- (int)getMementoState:(MM_Memento *)memento {
    return memento.state;
}

@end
