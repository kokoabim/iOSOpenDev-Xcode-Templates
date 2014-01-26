/* This is the header of the Velox manager.
 For use in Velox plugins. Calling these methods after -initWithFrame won't have any effect, you need to call them in your plugins -initwithFrame: method.
 Mind the availability notes. Use objc_getClass("Velox"), because you can't link Velox.
 Using any undocumented methods of the Velox classes is not supported and will result in undefined behavior. If you have API requests, contact us at support@apextweaks.com.
 Copyright Apextweaks 2013.*/
@class SBIconView;

@interface Velox
+(Velox *)sharedManager; //Availability: 1.0+ //Get shared Instance of the Velox manager
-(SBIconView *)currentIcon; //Availability: 1.0+ //Get the icon the user swiped //Use e.x. to set badgeValue.
-(void)setAdjustsNotchShadow:(BOOL)adjusts; //Availability: 1.0+ //Makes the notch (triangle) shadow less hard, more transparent.
-(void)setCustomNotchImage:(UIImage *)image; //Availability: coming soon (-> 1.0.4) //Set a custom image for the folder arrow / triangle.
@end