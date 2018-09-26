//
//  ADMobGenAppDelegate.m
//  ADMobGenSDK
//
//  Created by 1594717129@qq.com on 07/19/2018.
//  Copyright (c) 2018 1594717129@qq.com. All rights reserved.
//

#import "ADMobGenAppDelegate.h"
#import <ADMobGenSDK/ADMobGenSDKConfig.h>
#import "ADMobGenViewController.h"

@implementation ADMobGenAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //默认为ADMobGenLogLevelNone
//    [ADMobGenSDKConfig setLogLevel:ADMobGenLogLevelDebug];
    [ADMobGenSDKConfig initWithAppId:@"2938412" completionBlock:^(NSError *error) {
        if (error) {
            // SDK启动失败
        }
    }];
    
    
    [ADMobGenSDKConfig setGpsOn];
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    ADMobGenViewController *vc = [[ADMobGenViewController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    self.window.rootViewController = nav;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
