//
//  BR_Client.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "BR_Client.h"
#import "BR_Director.h"
#import "BR_USACarBuilder.h"
#import "BR_JPNCarBuilder.h"
#import "BR_Car.h"

@implementation BR_Client

- (void)constructUSACar {
    BR_USACarBuilder *usaCarBuilder = [BR_USACarBuilder new];
    BR_Director *usaCarDirector = [[BR_Director alloc] initWithCarBuilder:usaCarBuilder];
    BR_Car *usaCar = [usaCarDirector construct];
    NSLog(@"USA Car Constructed: %@", usaCar);
}

- (void)constructJPNCar {
    BR_JPNCarBuilder *jpnCarBuilder = [BR_JPNCarBuilder new];
    BR_Director *jpnCarDirector = [[BR_Director alloc] initWithCarBuilder:jpnCarBuilder];
    BR_Car *jpnCar = [jpnCarDirector construct];
    NSLog(@"JPN Car Constructed: %@", jpnCar);
}

@end
