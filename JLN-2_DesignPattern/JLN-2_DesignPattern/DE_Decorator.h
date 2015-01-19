//
//  DE_Decorator.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "DE_Component.h"

@interface DE_Decorator : DE_Component

@property (strong, nonatomic) DE_Component *component;

@end
