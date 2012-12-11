//
//  EzSampleViewController.h
//  EzSample_iOS_JustLeaking
//
//  Created by 熊谷 友宏 on H.24/12/11.
//  Copyright (c) 平成24年 Tomohiro Kumagai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EzSampleViewController : UIViewController

- (IBAction)NSThreadTest:(UIButton*)sender;
- (IBAction)NSOperationTest:(UIButton*)sender;
- (IBAction)PerformSelectorInBackgroundTest:(UIButton*)sender;

@end
