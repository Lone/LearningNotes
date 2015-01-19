//
//  PT_ColorText.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

@interface PT_ColorText : NSObject <NSCopying>

@property (strong, nonatomic) NSColor *color;
@property (strong, nonatomic) NSString *text;

@end
