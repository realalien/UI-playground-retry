//
//  DropBoxUIQuickProto_RETRYAppDelegate.h
//  DropBoxUIQuickProto_RETRY
//
//  Created by realalien on 11/24/11.
//  Copyright 2011 Spicyhorse Studio. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SettingNavViewController;

@interface DropBoxUIQuickProto_RETRYAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
    UITabBarController *tabBarController;
	
	//Q: why hook up a navigation controller to the app delegate? A:
	SettingNavViewController *settingNavigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;
@property (nonatomic, retain) IBOutlet SettingNavViewController *settingNavigationController;

@end
