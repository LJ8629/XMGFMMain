//
//  XMGAppDelegate.m
//  XMGFMMain
//
//  Created by 王顺子 on 11/09/2016.
//  Copyright (c) 2016 王顺子. All rights reserved.
//

#import "XMGAppDelegate.h"
#import "XMGTabBarController.h"
#import "XMGTabBar.h"
#import "TestVC.h"

@implementation XMGAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    XMGTabBarController *rootVC = [XMGTabBarController tabBarControllerWithAddChildVCsBlock:^(XMGTabBarController *tabBarC) {
        [tabBarC addChildVC:[TestVC new] normalImageName:@"tabbar_find_n" selectedImageName:@"tabbar_find_h" isRequiredNavController:YES];
        [tabBarC addChildVC:[UIViewController new] normalImageName:@"tabbar_sound_n" selectedImageName:@"tabbar_sound_h" isRequiredNavController:YES];
        [tabBarC addChildVC:[UIViewController new] normalImageName:@"tabbar_download_n" selectedImageName:@"tabbar_download_h" isRequiredNavController:YES];
        [tabBarC addChildVC:[UIViewController new] normalImageName:@"tabbar_me_n" selectedImageName:@"tabbar_me_h" isRequiredNavController:YES];
    }];

    XMGTabBar *tabbar = (XMGTabBar *)rootVC.tabBar;
    tabbar.middleClickBlock = ^(BOOL isPlaying) {
        if (isPlaying) {
            NSLog(@"播放");
        }else {
            NSLog(@"暂停");
        }
    };

    self.window.rootViewController = rootVC;
    [self.window makeKeyAndVisible];


    return YES;
}

@end
