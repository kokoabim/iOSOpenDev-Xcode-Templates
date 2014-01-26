#import "FSSwitchDataSource.h"
#import "FSSwitchPanel.h"

#error iOSOpenDev post-project creation from template requirements (remove these lines after completed) -- \
	Link to libflipswitch.dylib: \
	(1) go to TARGETS > Build Phases > Link Binary With Libraries and add /opt/iOSOpenDev/lib/libflipswitch.dylib \
	(2) remove these lines from *.xm files (not *.mm files as they're automatically generated from *.xm files)

@interface ___PACKAGENAME___Switch : NSObject <FSSwitchDataSource>
@end

@implementation ___PACKAGENAME___Switch

- (FSSwitchState)stateForSwitchIdentifier:(NSString *)switchIdentifier
{
	return FSSwitchStateOn;
}

- (void)applyState:(FSSwitchState)newState forSwitchIdentifier:(NSString *)switchIdentifier
{
	if (newState == FSSwitchStateIndeterminate)
		return;
}

@end