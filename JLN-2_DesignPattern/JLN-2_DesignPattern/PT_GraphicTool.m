//
//  PT_GraphicTool.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "PT_GraphicTool.h"
#import "PT_ColorText.h"
#import "PT_Rectangle.h"

@implementation PT_GraphicTool

- (void)drawColorTexts {
    PT_ColorText *redText = [PT_ColorText new];
    redText.color = [NSColor redColor];
    redText.text = @"Red Text";
    [self draw:redText];
    
    PT_ColorText *greenText = [redText copy];
    greenText.color = [NSColor greenColor];
    greenText.text = @"Green Text";
    [self draw:greenText];
}

- (void)drawRectangles {
    PT_Rectangle *rectangle = [PT_Rectangle new];
    rectangle.width = 100.0f;
    rectangle.height = 44.0f;
    [self draw:rectangle];
    
    PT_Rectangle *square = [PT_Rectangle new];
    square.width = 60.0f;
    square.height = 60.0f;
    [self draw:square];
}

- (void)draw:(id)graph {
    NSLog(@"%@", graph);
}

@end
