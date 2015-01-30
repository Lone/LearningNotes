//
//  ViewController.m
//  JLN-4_CompilerTricks
//
//  Created by Jymn_Chen on 15/1/19.
//  Copyright (c) 2015年 Jymn_Chen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

// 这个trick可以用于SDK的过时接口说明
- (void)deprecatedMethod DEPRECATED_ATTRIBUTE;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1. 通过__unused特性修饰，可以消除编译器的unused vars警告
    [self breakUnusedCompilerWarnings];
    
    // 2. 通过clang diagnostic ignored的编译器之类，可以消除编译器的deprecated类型的警告
    [self breakDeprecatedCompilerWarnings];
    
    // 3. 调用自定的过时方法
    [self useCustomDeprecatedMethod];
    
    // 4. 让编译器帮我们记住TODO
    [self addTODOCompilerWarnings];
    
    // 5. 产生错误提示
    [self generateCompilerErrors];
    
    // 6. 消除编译器的unreachable code类型的警告
    __unused int result = [self breakUnreachableCodeWarnings];
}

- (void)breakUnusedCompilerWarnings {
    NSURL *url = [NSURL URLWithString:@"http://www.baidu.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    // we got unused vars compiler warning here.
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:nil startImmediately:YES];
    
    // no warnings here.
    __unused NSURLConnection *unusedConnection = [[NSURLConnection alloc] initWithRequest:request delegate:nil startImmediately:YES];
}

- (void)breakDeprecatedCompilerWarnings {
    NSString *text = @"HelloWorld";
    
    // we got deprecated compiler warning here.
    __unused CGSize sizeToFit = [text sizeWithFont:[UIFont systemFontOfSize:12.0f] constrainedToSize:CGSizeMake(240.0f, CGFLOAT_MAX) lineBreakMode:NSLineBreakByWordWrapping];
    
    // no warnings here.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
    __unused CGSize clangSizeToFit = [text sizeWithFont:[UIFont systemFontOfSize:12.0f] constrainedToSize:CGSizeMake(240.0f, CGFLOAT_MAX) lineBreakMode:NSLineBreakByWordWrapping];
#pragma clang diagnostic pop
}

- (void)useCustomDeprecatedMethod {
    // we got a warning here.
    [self deprecatedMethod];
}

- (void)addTODOCompilerWarnings {
#warning - TODO
    // code here.
}

- (void)generateCompilerErrors {
// #error会产生错误提示
#if !__has_feature(objc_arc)
#error This must be built with ARC.
    // You can turn on ARC for only this file by adding -fobjc-arc to the build phase for each of its file.
#endif
}

- (int)breakUnreachableCodeWarnings {
    NSLog(@"0");
    return 0;
    
    // we got a warnings here.
    NSLog(@"1");
    return 1;
    
    // no warnings here.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunreachable-code"
    NSLog(@"2");
    return 2;
#pragma clang diagnostic pop
}

@end
