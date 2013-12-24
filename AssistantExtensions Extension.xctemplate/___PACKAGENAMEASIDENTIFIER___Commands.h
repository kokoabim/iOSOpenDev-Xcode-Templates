//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <AssistantExtensions/SiriObjects.h>

// Class to handle commands for the AE Extension
// One or more SECommand class can exist per AE Extension but normally just one
// Each different SECommand class must be "registered" in *Extenion's -[initWithSystem:system]

@interface ___FILEBASENAMEASIDENTIFIER___ : NSObject<SECommand>

- (BOOL)handleSpeech:(NSString *)text tokens:(NSArray *)tokens tokenSet:(NSSet *)tokenset context:(id<SEContext>)ctx;

@end
