//
//  BG_Window.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BG_WindowImp;

@interface BG_Window : NSObject

@property (strong, nonatomic) BG_WindowImp *imp;

- (void)drawText;
- (void)drawRect;

@end
