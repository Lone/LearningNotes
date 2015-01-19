//
//  CO_Graphic.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CO_Graphic : NSObject

- (void)draw;
- (void)addGraphic:(CO_Graphic *)graphic;
- (void)removeGraphic:(CO_Graphic *)graphic;
- (CO_Graphic *)getchild:(int)index;

@end
