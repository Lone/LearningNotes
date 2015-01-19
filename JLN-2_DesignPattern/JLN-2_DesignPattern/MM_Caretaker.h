//
//  MM_Caretaker.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/30.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MM_Caretaker : NSObject

- (void)requestToCreateMementoWithState:(int)state;
- (void)requestToUpdateMementoWithState:(int)state;
- (void)requestToResetMemento;
- (int)requestForMementoState;

@end

// MM_Caretaker
// 只能保存备忘录，但不能修改或查询备忘录的状态

// MM_Originator
// 创建，修改，重置，查询备忘录的状态

// MM_Memento
// 保存某个特定的状态
