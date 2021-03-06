//
//  AppDelegate.m
//  HJAppHelper
//
//  Created by huangjian on 15/10/21.
//  Copyright © 2015年 huangjian. All rights reserved.
//

#import "AppDelegate.h"
#import "HJAddressBookManager.h"
#import "HJDateTool.h"
#import "HJVerifyManager.h"
#import "NSDate+Utilities.h"
#import "HJAddressBookModel.h"
#import "NSObject+RuntimeHelper.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //时间戳转换成时间
    //[self calculateDate];
    
    //[self verifyMobile:@"18970280703"];
    
//    NSInteger week = [[NSDate date] week];
//    NSLog(@"week : %ld",(long)week);
    
    
//    HJAddressBookModel * model = [[HJAddressBookModel alloc] init];
//    
//    [model getIvarList];
//    [model getPropertyList];
    
    return YES;
}

#pragma mark - 时间戳转换
- (void)calculateDate {

    NSString * dateStr = [HJDateTool calculateTimeWithDay:@"1451554971"];
    
    NSLog(@"date : %@",dateStr);
    
}

#pragma mark - 手机验证
- (void)verifyMobile:(NSString *)mobile {

    if ([HJVerifyManager validatePhone:mobile]) {
        NSLog(@"%@是个手机号码",mobile);
    } else {
        NSLog(@"No！No！No！");
    }
    
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
