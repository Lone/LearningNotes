//
//  MM_Caretaker.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/30.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "MM_Caretaker.h"
#import "MM_Originator.h"
#import "MM_Memento.h"

@interface MM_Caretaker ()

@property (strong, nonatomic) MM_Memento *caringMemento;

@property (strong, nonatomic) MM_Originator *originator;

@end

@implementation MM_Caretaker

- (instancetype)init {
    self = [super init];
    if (self) {
        _originator = [MM_Originator new];
    }
    return self;
}

- (void)requestToCreateMementoWithState:(int)state {
    MM_Memento *memento = [_originator createMementoWithState:state];
    self.caringMemento = memento;
}

- (void)requestToUpdateMementoWithState:(int)state {
    [_originator updateMemento:_caringMemento withState:state];
}

- (void)requestToResetMemento {
    _caringMemento = [_originator resetMemento];
}

- (int)requestForMementoState {
    return [_originator getMementoState:_caringMemento];
}

@end
