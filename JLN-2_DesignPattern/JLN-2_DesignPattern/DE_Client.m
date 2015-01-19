//
//  DE_Client.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "DE_Client.h"
#import "DE_Decorator.h"
#import "DE_Component.h"

@interface DE_Client ()

@property (strong, nonatomic) DE_Component *component;
@property (strong, nonatomic) DE_Decorator *decorator;

@end

@implementation DE_Client

- (void)componentOperation {
    NSLog(@"-- Component Operation --");
    _component = [DE_Component new];
    [_component operation];
    NSLog(@"-- End --");
}

- (void)decoratorOperation {
    NSLog(@"-- Decorator Operation --");
    _decorator = [DE_Decorator new];
    _decorator.component = _component;
    [_decorator operation];
    NSLog(@"-- End --");
}

@end
