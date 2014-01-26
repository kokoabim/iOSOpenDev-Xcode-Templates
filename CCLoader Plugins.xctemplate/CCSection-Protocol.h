#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol CCSectionDelegate <NSObject>

- (void)updateStatusText:(NSString *)text;
- (void)requestControlCenterDismissal;
- (void)sectionHeightChanged;
- (void)showViewController:(UIViewController *)vc animated:(BOOL)animated completion:(void (^)(void))completion;

@end

@protocol CCSection <NSObject>

@required
- (UIView *)view;

- (CGFloat)sectionHeight;

@optional
- (void)setDelegate:(UIViewController <CCSectionDelegate> *)delegate;

- (void)controlCenterWillAppear;

- (void)controlCenterDidDisappear;

@end
