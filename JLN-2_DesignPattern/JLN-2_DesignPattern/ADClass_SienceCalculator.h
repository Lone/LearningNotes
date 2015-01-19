//
//  ADClass_SienceCalculator.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "ADClass_Calculater.h"
#import "ADClass_Operation.h"

// ADClass_SienceCalculator要实现的接口是add:to:
// 希望复用ADClass_Calculator类的方法otherAdd:to:
// ADClass_SienceCalculator就是ADClass_Calculator的类接口适配器

// 这样做有一个问题:
// 当适配器需要从多个类里面调用方法的时候，类Adapter方法就不适用了
// 因为OC不允许多重继承，既然不能用继承，那么就用组合好了，因此，就有了对象Adapter

@interface ADClass_SienceCalculator : ADClass_Calculater <ADClass_Operation>

@end
