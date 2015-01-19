//
//  FM_AbstractProduct.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/26.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol FM_AbstractProduct <NSObject>

- (instancetype)initWithPrice:(CGFloat)price;
- (CGFloat)fm_price;

@end
