//
//  AF_LinuxWidgetFactory.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/26.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "AF_LinuxWidgetFactory.h"
#import "AF_LinuxWindow.h"
#import "AF_LinuxView.h"

@implementation AF_LinuxWidgetFactory

+ (AF_LinuxWindow *)af_window {
    AF_LinuxWindow *window = [AF_LinuxWindow new];
    return window;
}

+ (AF_LinuxView *)af_view {
    AF_LinuxView *view = [AF_LinuxView new];
    return view;
}

@end
