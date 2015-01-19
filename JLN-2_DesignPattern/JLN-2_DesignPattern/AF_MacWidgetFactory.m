//
//  AF_MacWidgetFactory.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/26.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "AF_MacWidgetFactory.h"
#import "AF_MacWindow.h"
#import "AF_MacView.h"

@implementation AF_MacWidgetFactory

+ (AF_MacWindow *)af_window {
    AF_MacWindow *window = [AF_MacWindow new];
    return window;
}

+ (AF_MacView *)af_view {
    AF_MacView *view = [AF_MacView new];
    return view;
}

@end
