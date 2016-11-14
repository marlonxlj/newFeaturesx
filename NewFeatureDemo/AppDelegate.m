//
//  AppDelegate.m
//  NewFeatureDemo
//
//  Created by m on 2016/10/11.
//  Copyright © 2016年 XLJ. All rights reserved.
//

#import "AppDelegate.h"
#import "XLJNewFetureController.h"
#import "ViewController.h"

#define XLJVersion @"LocationVersion"

@interface AppDelegate ()
@property (nonatomic, strong) NSMutableArray *mArray;
@end

@implementation AppDelegate

- (NSMutableArray *)mArray
{
    if (!_mArray) {
        _mArray = @[@"0.jpg",@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg"].mutableCopy;
    }
    
    return _mArray;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
 

//    ViewController *homeVC = [[ViewController alloc] init];
//    
//    XLJNewFetureController *newVC = [[XLJNewFetureController alloc] initWithNSArray:self.mArray withButtonSize:CGSizeMake(120, 80) withButtonTitle:@"开启旅行" withButtonImage:@"functionGuideBt1" withButtonTitleColor:[UIColor orangeColor] withButtonHeight:0.87 withViewController:homeVC];
//    
//    self.window.rootViewController = newVC;
    
    [self chooseRootViewController:self.window];
    
    [self.window makeKeyAndVisible];
    
    
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

- (void)chooseRootViewController:(UIWindow *)window
{
    //1 获取当前版本号
    NSString *currentVersion = [NSBundle mainBundle].infoDictionary[@"CFBundleShortVersionString"];
    
    //2 获取上一次的版本号
    NSString *lastVersion = [[NSUserDefaults standardUserDefaults] objectForKey:XLJVersion];
    
    if ([currentVersion isEqualToString:lastVersion]) {//没有最新的版本号
        //创建tabBarVc
        UIViewController *vc = [[UIViewController alloc] init];
        
        //        设置窗口的根控制器
        window.rootViewController = vc;
        
    }else{//有最新的版本号
        //进入新特性界面
        
        UIViewController *vc = [[UIViewController alloc] init];
        
        XLJNewFetureController *NewFeatureVC = [[XLJNewFetureController alloc] initWithNSArray:self.mArray withButtonSize:CGSizeMake(120, 100) withButtonTitle:nil withButtonImage:@"anniu" withButtonTitleColor:[UIColor redColor] withButtonHeight:0.87 withViewController:vc];
        
        window.rootViewController = NewFeatureVC;

        //保存当前版本号，用偏好设置
        [[NSUserDefaults standardUserDefaults] setObject:currentVersion forKey:XLJVersion];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    
}



@end
