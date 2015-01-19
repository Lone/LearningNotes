//
//  CO_Picture.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "CO_Picture.h"
#import "CO_Line.h"
#import "CO_Text.h"

@interface CO_Picture ()

@property (strong, nonatomic) NSMutableArray *graphics;

@end

@implementation CO_Picture

- (instancetype)init {
    self = [super init];
    if (self) {
        _graphics = [NSMutableArray array];
        [_graphics addObject:[CO_Line new]];
        [_graphics addObject:[CO_Text new]];
    }
    return self;
}

- (void)draw {
    NSLog(@"Drawing %@", [self class]);
    for (CO_Graphic *graph in _graphics) {
        [graph draw];
    }
}

- (void)addGraphic:(CO_Graphic *)graphic {
    [_graphics addObject:graphic];
}

- (void)removeGraphic:(CO_Graphic *)graphic {
    if ([_graphics containsObject:graphic]) {
        [_graphics removeObject:graphic];
    }
}

- (CO_Graphic *)getchild:(int)index {
    if (index >= 0 && index < _graphics.count) {
        return _graphics[index];
    }
    else {
        return nil;
    }
}

@end
