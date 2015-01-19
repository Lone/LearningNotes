//
//  VI_Visitable.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/30.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol VI_Visitor;

@protocol VI_Visitable <NSObject>

- (void)accept:(id<VI_Visitor>)visitor;

@end
