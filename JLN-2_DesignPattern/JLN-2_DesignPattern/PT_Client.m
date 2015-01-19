//
//  PT_Client.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "PT_Client.h"
#import "PT_GraphicTool.h"

@implementation PT_Client

- (void)drawColorTextAndRectangles {
    PT_GraphicTool *tool = [PT_GraphicTool new];
    [tool drawColorTexts];
    [tool drawRectangles];
}

@end
