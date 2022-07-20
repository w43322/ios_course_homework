//
//  AppDelegate.m
//  homework1
//
//  Created by Yilin Wang on 2022/7/13.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOption{// Override point for customization after application launch.
    NSLog(@"didFinishLaunchingWithOptions");
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application { /* 当应用程序从活动状态(active)变到非活动状态(inactive时被触发调用， 这可能发生在一些临时中断下(例如：来电话、来短信)又或者程序退出时，他会先过渡到后台然后terminate 使用这方法去暂停正在进行的任务，禁用计时器，节流OpenGL ES 帧率。在游戏中应该在这个方法里面暂停游戏。 */
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    NSLog(@"WillResignActive");
}

- (void)applicationDidEnterBackground:(UIApplication *)application { /* 使用这种方法来释放共享资源,保存用户数据,无效计时器,存储足够多的应用程序状态信息来恢复您的应用程序的当前状态,以防它终止丢失数据。 如果你的程序支持后台运行，那么当用户退出时不会调用applicationWillTerminate。 */
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.      // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        NSLog(@"DidEnterBackground");
    }

- (void)applicationWillEnterForeground:(UIApplication *)application { /* 先从后台切换到非活动状态，然后进入活动状态。 */
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    NSLog(@"WillEnterForeground");
}

- (void)applicationDidBecomeActive:(UIApplication *)application { /* 重启所有的任务，不管是从非活动状态还是刚启动程序，还是后台状态。 */
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        NSLog(@"DidBecomeActive");
    }

- (void)applicationWillTerminate:(UIApplication *)application { /* 终止，game over */
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    NSLog(@"WillTerminate");
}

@end
