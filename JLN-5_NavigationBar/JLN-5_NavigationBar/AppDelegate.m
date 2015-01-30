//
//  AppDelegate.m
//  JLN-5_NavigationBar
//
//  Created by Jymn_Chen on 15/1/19.
//  Copyright (c) 2015年 Jymn_Chen. All rights reserved.
//

#import "AppDelegate.h"

#import "MasterTableViewController.h"

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    MasterTableViewController *masterController = [MasterTableViewController new];
    UINavigationController *naviController = [[UINavigationController alloc] initWithRootViewController:masterController];
    
    /** 1. 设置导航栏的背景颜色 **/

    // [[UINavigationBar appearance] setBarTintColor:[UIColor yellowColor]];
    [[UINavigationBar appearance] setBarTintColor:UIColorFromRGB(0x067AB5)];
    [[UINavigationBar appearance] setTranslucent:NO];
    
    
    /** 2. 在导航栏中使用背景图片 **/
    
    // 如果希望在导航栏中使用一个图片当做背景，那么你需要提供一个稍微高一点的图片(这样可以延伸到导航栏背后)。导航栏的高度从44 points(88 pixels)变为了64 points(128 pixels)
    
    // nav_bg.png 320 * 44
    // [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"nav_bg.png"] forBarMetrics:UIBarMetricsDefault];
    // nav_bg_ios7 320 * 64
    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"nav_bg_ios7"] forBarMetrics:UIBarMetricsDefault];
    
    
    /** 3. 定制返回按钮 **/
    
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
//    [[UINavigationBar appearance] setBackIndicatorImage:[UIImage imageNamed:@"back_btn.png"]];
//    [[UINavigationBar appearance] setBackIndicatorTransitionMaskImage:[UIImage imageNamed:@"back_btn.png"]];
    
    
    /** 4. 修改导航栏标题的字体 **/
    
    /*
     UITextAttributeFont – 字体key
     UITextAttributeTextColor – 文字颜色key
     UITextAttributeTextShadowColor – 文字阴影色key
     UITextAttributeTextShadowOffset – 文字阴影偏移量key
     */
    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.8];
    shadow.shadowOffset = CGSizeMake(0, 1);
    NSDictionary *textAttributes = @{NSForegroundColorAttributeName : [UIColor colorWithRed:245.0/255.0 green:245.0/255.0 blue:245.0/255.0 alpha:1.0],
                                     NSShadowAttributeName : shadow,
                                     NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-CondensedBlack" size:21.0]
                                     };
    [[UINavigationBar appearance] setTitleTextAttributes:textAttributes];
    
    
    /** 7. 修改状态栏的风格 **/
    /*
     在iOS 7中，通过上面的方法来修改状态栏风格非常的棒。另外，我们也可以使用UIApplication的statusBarStyle方法来设置状态栏，不过，首先需要停止使用View controller-based status bar appearance。在project target的Info tab中，插入一个新的key，名字为View controller-based status bar appearance，并将其值设置为NO。
     */
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    _window.rootViewController = naviController;
    [_window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
