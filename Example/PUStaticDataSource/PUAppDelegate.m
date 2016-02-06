//
//  PUAppDelegate.m
//  PUStaticDataSource
//
//  Created by Danilo on 02/06/2016.
//  Copyright (c) 2016 Danilo. All rights reserved.
//

#import "PUAppDelegate.h"
#import "PUViewController.h"

@implementation PUAppDelegate

- (UIWindow *)window
{
    if (!_window) {
        _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    }

    return _window;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[[PUViewController alloc] init]];
    [self.window makeKeyAndVisible];

    return YES;
}

@end
