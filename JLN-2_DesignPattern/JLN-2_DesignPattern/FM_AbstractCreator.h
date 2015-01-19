//
//  FM_AbstractCreator.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/26.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol FM_AbstractProduct;

@protocol FM_AbstractCreator <NSObject>

// 工厂方法
- (id<FM_AbstractProduct>)fm_product;

@end
