//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#define MRC !__has_feature(objc_arc)

#if MRC

#define CC_Strong retain
#define CC_Weak assign

#else

#define CC_Strong strong
#define CC_Weak weak

#endif

#import "___PACKAGENAMEASIDENTIFIER___Section.h"

@interface ___PACKAGENAMEASIDENTIFIER___Section ()

@property (nonatomic, CC_Strong) NSBundle *bundle;
@property (nonatomic, CC_Strong) ___PACKAGENAMEASIDENTIFIER___SectionView *view;

@property (nonatomic, CC_Weak) UIViewController <CCSectionDelegate> *delegate;

@end

@implementation ___PACKAGENAMEASIDENTIFIER___Section

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
    self.view = [[___PACKAGENAMEASIDENTIFIER___SectionView alloc] init];
}

- (UIView *)view {
    if (!_view) {
        [self loadView];
    }
    
    return _view;
}

- (void)dealloc {
#if MRC
    [super dealloc];
    [self.view release];
#endif
    self.view = nil;
    self.bundle = nil;
}

- (void)controlCenterWillAppear {
    
}

- (void)controlCenterDidDisappear {
    
}

@end
