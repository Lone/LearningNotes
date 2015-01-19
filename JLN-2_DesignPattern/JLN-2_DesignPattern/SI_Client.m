//
//  SI_Client.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "SI_Client.h"
#import "SI_FileSystem.h"

@implementation SI_Client

- (void)getAllFileSystem {
    SI_FileSystem *fileSystem1 = [SI_FileSystem sharedInstance];
    SI_FileSystem *fileSystem2 = [SI_FileSystem sharedInstance];
    SI_FileSystem *fileSystem3 = [SI_FileSystem sharedInstance];
    NSLog(@"fileSystem1 = %@", fileSystem1);
    NSLog(@"fileSystem2 = %@", fileSystem2);
    NSLog(@"fileSystem3 = %@", fileSystem3);
}

@end
