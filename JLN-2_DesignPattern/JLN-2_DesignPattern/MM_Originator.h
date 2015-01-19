//
//  MM_Originator.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/30.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MM_Memento;

@interface MM_Originator : NSObject

- (MM_Memento *)createMementoWithState:(int)state;
- (void)updateMemento:(MM_Memento *)memento withState:(int)state;
- (MM_Memento *)resetMemento;
- (int)getMementoState:(MM_Memento *)memento;

@end
