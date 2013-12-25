//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  iOS 7 Notification Center Widget Template Code By @Bensge
//
//  iOS 7 Notification Center Widget Template Created By : @iMokhles
//

#import "Headers.h"

#error iOSOpenDev post-project creation from template requirements (remove these lines after completed) -- \
	Link to libsubstrate.dylib: \
	(1) go to TARGETS > Build Phases > Link Binary With Libraries and add SpringBoardUIServices \
	(2) remove these lines from *.m files

static NSBundle *____PACKAGENAMEASIDENTIFIER___WeeAppBundle = nil;

@interface ___PACKAGENAMEASIDENTIFIER___Controller: _SBUIWidgetViewController {
	UIView *_weeView;
}
@property (nonatomic, retain) UIView *weeView;
@end

@implementation ___PACKAGENAMEASIDENTIFIER___Controller
@synthesize weeView = _weeView;

+ (void)initialize
{
	____PACKAGENAMEASIDENTIFIER___WeeAppBundle = [[NSBundle bundleForClass:[self class]] retain];
	//This bundle gets loaded so you can easily access images in the weeapp bundle
}

- (id)init
{
	if (self = [super init]) {
		//Custom initialisation
		_weeView = [[UIView alloc] initWithFrame:(CGRect){CGPointZero, {[self preferredViewSize]}}];
		_weeView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        
		self.view = _weeView;
        
		//You could add subviews here
	}
	return self;
}

-(CGSize)preferredViewSize
{
	return CGSizeMake(280,100);
	//Of course return which size you need
}

- (void)unloadView {
	[weeView release];
	_weeView = nil;
	// Destroy any additional subviews you added here. Don't waste memory :(.
}

- (void)dealloc {
	[weeView release];
	[super dealloc];
}


#pragma mark state change notification

- (void)hostDidDismiss
{
	[super hostDidDismiss];
	//Notification Center was closed
}
- (void)hostDidPresent
{
	[super hostDidPresent];
	//Notification Center was opened
}

@end