//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  iOS 7 Notification Center Widget Template Code By WillFour20
//
//  iOS 7 Notification Center Widget Template Created By : @iMokhles
//

#import "___PACKAGENAMEASIDENTIFIER___Controller.h"

@implementation ___PACKAGENAMEASIDENTIFIER___Controller

- (void)viewDidLoad
{
	UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 80)];
	lbl.backgroundColor = [UIColor clearColor];
	lbl.textColor = [UIColor whiteColor];
	lbl.text = @"Hello World";
	lbl.textAlignment = NSTextAlignmentCenter;
	[self.view addSubview:lbl];
	[lbl release];
}

- (CGSize)preferredViewSize
{
	return CGSizeMake(320, 80);
}

@end