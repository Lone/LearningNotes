//
//  AF_WidgetFactory.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/26.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

@protocol AF_WidgetFactory <NSObject>

+ (id)af_window;
+ (id)af_view;

@end
