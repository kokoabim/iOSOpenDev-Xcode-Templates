//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import "___FILEBASENAME___.h"

@implementation ___FILEBASENAMEASIDENTIFIER___

- (BOOL)handleSpeech:(NSString *)text tokens:(NSArray *)tokens tokenSet:(NSSet *)tokenset context:(id<SEContext>)ctx {
	// NSLog(@"___PROJECTNAMEASIDENTIFIER___Commands handleSpeech: %@", text);
	
	// React to recognized tokens (what happen or what happened)
	if ([tokens count] >= 2 && [[tokens objectAtIndex:0] isEqualToString:@"who"] &&
		([tokenset containsObject:@"rocks"] || [tokenset containsObject:@"rules"])) {
		// There are three ways to respond...
		
		// #1: Send utterance text as response
		//[ctx sendAddViewsUtteranceView:@"Angels and Airwaves"];
		
		// #2: Send snippet view as response
		//NSDictionary *snipProps = [NSDictionary dictionaryWithObjectsAndKeys:@"Angels and Airwaves", @"text", @"http://angelsandairwaves.com", @"link", nil];
		//[ctx sendAddViewsSnippet:@"___PROJECTNAMEASIDENTIFIER___Snippet" properties:snipProps];
		
		// #3: Send utterance text and snippet view as response
		NSDictionary *snipProps = [NSDictionary dictionaryWithObjectsAndKeys:@"Angels and Airwaves", @"text", @"http://angelsandairwaves.com", @"link", nil];
		NSMutableArray *views = [NSMutableArray arrayWithCapacity:2];
		[views addObject:[ctx createAssistantUtteranceView:@"Angels and Airwaves"]];
		[views addObject:[ctx createSnippet:@"___PROJECTNAMEASIDENTIFIER___Snippet" properties:snipProps]];
		[ctx sendAddViews:views];

		// For more complex extensions, do something asynchronly here...

		// End of the request
		[ctx sendRequestCompleted];
		
		return YES; // handled by extension
	}
	
	return NO;
}

@end
