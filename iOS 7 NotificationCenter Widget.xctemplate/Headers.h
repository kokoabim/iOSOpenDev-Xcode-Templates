#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <QuartzCore/QuartzCore.h>

@protocol _SBUIWidgetHost <NSObject>
-(void)invalidatePreferredViewSize;
-(void)requestLaunchOfURL:(id)url;
-(void)requestPresentationOfViewController:(id)viewController presentationStyle:(int)style context:(id)context completion:(id)completion;
@end



@interface _SBUIWidgetViewController : UIViewController <_SBUIWidgetHost> {
    id<_SBUIWidgetHost> *_widgetHost;
    NSString *_widgetIdentifier;
    int _widgetIdiom;
    NSString *_widgetidentifier;
}

+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;

@property(readonly) CGSize preferredViewSize;
@property (assign) id<_SBUIWidgetHost> widgetHost;
@property(copy) NSString * widgetIdentifier;
@property int widgetIdiom;

- (void)__hostDidDismiss;
- (void)__hostDidPresent;
- (void)__hostWillDismiss;
- (void)__hostWillPresent;
- (void)__requestPreferredViewSizeWithReplyHandler:(id)arg1;
- (void)__setWidgetIdentifier:(id)arg1;
- (void)__setWidgetIdiom:(int)arg1;
- (void)dealloc;
- (void)hostDidDismiss;
- (void)hostDidPresent;
- (void)hostWillDismiss;
- (void)hostWillPresent;
- (void)invalidatePreferredViewSize;
- (CGSize)preferredViewSize;
- (void)requestLaunchOfURL:(id)arg1;
- (void)requestPresentationOfViewController:(id)arg1 presentationStyle:(int)arg2 context:(id)arg3 completion:(id)arg4;
- (void)setWidgetHost:(id<_SBUIWidgetHost>)arg1;
- (void)setWidgetIdentifier:(NSString *)arg1;
- (void)setWidgetIdiom:(int)arg1;
- (id)widgetHost;
- (id)widgetIdentifier;
- (int)widgetIdiom;
-(void)unloadView;

@end
