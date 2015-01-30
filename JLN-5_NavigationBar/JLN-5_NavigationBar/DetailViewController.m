//
//  DetailViewController.m
//  JLN-5_NavigationBar
//
//  Created by Jymn_Chen on 15/1/19.
//  Copyright (c) 2015年 Jymn_Chen. All rights reserved.
//

#import "DetailViewController.h"
#import "ThirdViewController.h"

@interface DetailViewController ()

@property (nonatomic, strong) UILabel *label;

@property (nonatomic, strong) ThirdViewController *vc;

@property (nonatomic, strong) UIBarButtonItem *backButton;
@property (nonatomic, assign) SEL action;

@end

@implementation DetailViewController

- (void)listenButtonClicked {
    NSLog(@"111");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
#warning - Notes
    // 这里必须设置底色，否则这个View Controller会黑屏
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
    _label.center = self.view.center;
    
    [self.view addSubview:_label];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"push" forState:UIControlStateNormal];
    button.frame = CGRectMake(100, 400, 100, 44);
    [button addTarget:self action:@selector(push:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    self.vc = [ThirdViewController new];
}

- (void)push:(id)sender {
    [self.navigationController pushViewController:_vc animated:YES];
}

- (void)viewWillAppear:(BOOL)animated {
    _label.text = _detail;
    
    // iOS 6 or before
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    
//    // iOS 7 or later
//    if ([self respondsToSelector:@selector(setNeedsStatusBarAppearanceUpdate)]) {
//        [self prefersStatusBarHidden];
//        [self performSelector:@selector(setNeedsStatusBarAppearanceUpdate)];
//    }
}

- (void)viewDidDisappear:(BOOL)animated {
    [[UIApplication sharedApplication] setStatusBarHidden:NO];
}

/** 8. 隐藏状态栏 **/

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
