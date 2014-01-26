//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import "___FILEBASENAMEASIDENTIFIER___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()

@property (nonatomic, strong) NSBundle *bundle;
@property (nonatomic, strong) ___FILEBASENAMEASIDENTIFIER___View *view;

@property (nonatomic, weak) UIViewController <CCSectionDelegate> *delegate;

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

- (instancetype)init {
    self = [super init];
    if (self) {
        self.bundle = [NSBundle bundleForClass:[self class]];
    }
    return self;
}

- (CGFloat)sectionHeight {
    return 50.0f;
}

- (void)loadView {
    self.view = [[___FILEBASENAMEASIDENTIFIER___View alloc] init];
}

- (UIView *)view {
    if (!_view) {
        [self loadView];
    }
    
    return _view;
}

- (void)controlCenterWillAppear {
    
}

- (void)controlCenterDidDisappear {
    
}

@end
