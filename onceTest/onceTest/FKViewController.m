//
//  FKViewController.m
//  onceTest
//
//  Created by 李世爽 on 15-10-28.
//  Copyright (c) 2015年 crazyit.org. All rights reserved.
//

#import "FKViewController.h"

@interface FKViewController ()

@end

@implementation FKViewController
- (void)viewDidLoad
{
	[super viewDidLoad];
}
- (IBAction)clicked:(id)sender
{	
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		NSLog(@"==执行代码块==");
		// 线程暂停3秒
		[NSThread sleepForTimeInterval:3];
	});
}
@end
