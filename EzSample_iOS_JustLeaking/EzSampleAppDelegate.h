//
//  EzSampleAppDelegate.h
//  EzSample_iOS_JustLeaking
//
//  Created by 熊谷 友宏 on H.24/12/11.
//  Copyright (c) 平成24年 Tomohiro Kumagai. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EzSampleViewController;

@interface EzSampleAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) EzSampleViewController *viewController;

@end
