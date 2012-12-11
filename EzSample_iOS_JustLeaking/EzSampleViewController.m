//
//  EzSampleViewController.m
//  EzSample_iOS_JustLeaking
//
//  Created by 熊谷 友宏 on H.24/12/11.
//  Copyright (c) 平成24年 Tomohiro Kumagai. All rights reserved.
//

#import "EzSampleViewController.h"

@interface EzSampleOperation : NSOperation

@end

@interface EzSampleViewController (Test)

+ (void)test;
+ (NSString*)string;

- (void)test:(id)sender;

@end

@implementation EzSampleOperation

- (void)main
{
	[EzSampleViewController test];
}

@end

@implementation EzSampleViewController (Test)

+ (NSString*)string
{
	return [NSString stringWithFormat:@"TEST"];
}

+ (void)test
{
	[EzSampleViewController string];
}

- (void)test:(id)sender
{
	[EzSampleViewController test];
}

@end

@implementation EzSampleViewController

+ (void)load
{
	[EzSampleViewController test];
}

- (IBAction)NSThreadTest:(UIButton*)sender
{
	[NSThread detachNewThreadSelector:@selector(test:) toTarget:self withObject:nil];
}

- (IBAction)NSOperationTest:(UIButton*)sender
{
	NSOperationQueue* queue = [[NSOperationQueue alloc] init];
	NSOperation* operation = [[EzSampleOperation alloc] init];
	
	[queue addOperation:operation];
	[queue waitUntilAllOperationsAreFinished];
	
	[operation release];
	[queue release];
}

- (IBAction)PerformSelectorInBackgroundTest:(UIButton*)sender
{
	[self performSelectorInBackground:@selector(test:) withObject:nil];
}

@end
