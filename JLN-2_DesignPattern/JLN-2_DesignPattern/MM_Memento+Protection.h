//
//  MM_Memento+Protection.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/30.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "MM_Memento.h"

@interface MM_Memento ()

@property (assign, nonatomic) int state;

@end

// 将state放到Protection的Extension中可以保证只有MM_Originator能够访问到state
// 而MM_Caretaker不能
