//
//  MM_Client.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/30.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "MM_Client.h"
#import "MM_Caretaker.h"
#import "MM_Originator.h"
#import "MM_Memento.h"

@implementation MM_Client

- (void)useMemento {
    MM_Caretaker *careTaker = [MM_Caretaker new];
    [careTaker requestToCreateMementoWithState:1];
    NSLog(@"Create --- state = %d", [careTaker requestForMementoState]);
    [careTaker requestToUpdateMementoWithState:100];
    NSLog(@"Update --- state = %d", [careTaker requestForMementoState]);
    [careTaker requestToResetMemento];
    NSLog(@"Reset --- state = %d", [careTaker requestForMementoState]);
}

@end
