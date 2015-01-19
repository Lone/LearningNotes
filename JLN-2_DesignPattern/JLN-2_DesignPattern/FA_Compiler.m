//
//  FA_Compiler.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "FA_Compiler.h"
#import "FA_CodeGenerator.h"
#import "FA_Scanner.h"
#import "FA_Parser.h"

@interface FA_Compiler ()

@property (strong, nonatomic) FA_CodeGenerator *codeGenerator;
@property (strong, nonatomic) FA_Scanner *scanner;
@property (strong, nonatomic) FA_Parser *parser;

@end

@implementation FA_Compiler

- (instancetype)init {
    self = [super init];
    if (self) {
        _codeGenerator = [FA_CodeGenerator new];
        _scanner = [FA_Scanner new];
        _parser = [FA_Parser new];
    }
    return self;
}

- (void)compile {
    NSLog(@"%@: %s", [self className], __func__);
    [_scanner scan];
    [_parser parse];
    [_codeGenerator generateCode];
}

@end
