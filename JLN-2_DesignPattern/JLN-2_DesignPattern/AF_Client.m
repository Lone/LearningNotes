//
//  AF_Client.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/26.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "AF_Client.h"
#import "AF_MacWidgetFactory.h"
#import "AF_MacWindow.h"
#import "AF_MacView.h"
#import "AF_LinuxWidgetFactory.h"
#import "AF_LinuxWindow.h"
#import "AF_LinuxView.h"

@implementation AF_Client

- (void)createMacGUI {
    AF_MacWindow *window = [AF_MacWidgetFactory af_window];
    AF_MacView *view = [AF_MacWidgetFactory af_view];
    NSLog(@"%@ %@", window, view);
}

- (void)createLinuxGUI {
    AF_LinuxWindow *window = [AF_LinuxWidgetFactory af_window];
    AF_LinuxView *view = [AF_LinuxWidgetFactory af_view];
    NSLog(@"%@ %@", window, view);
}

@end
