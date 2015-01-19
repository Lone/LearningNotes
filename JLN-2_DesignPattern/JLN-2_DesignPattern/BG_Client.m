//
//  BG_Client.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "BG_Client.h"
#import "BG_MacWindow.h"
#import "BG_MacWindowImp.h"
#import "BG_LinuxWindow.h"
#import "BG_LinuxWindowImp.h"

@implementation BG_Client

- (void)drawMacWindowBorder {
    NSLog(@"-- Begin Drawing Mac Window Border --");
    BG_MacWindow *macWindow = [BG_MacWindow new];
    macWindow.imp = [BG_MacWindowImp new];
    [macWindow drawBorder];
    NSLog(@"-- End --");
}

- (void)drawLinuxWindowCloseBox {
    NSLog(@"-- Begin Drawing Linux Window Close Box --");
    BG_LinuxWindow *linuxWindow = [BG_LinuxWindow new];
    linuxWindow.imp = [BG_LinuxWindowImp new];
    [linuxWindow drawCloseBox];
    NSLog(@"-- End --");
}

@end
