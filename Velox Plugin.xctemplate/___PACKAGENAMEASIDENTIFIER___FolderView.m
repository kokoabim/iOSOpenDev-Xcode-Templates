//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import "VeloxFolderViewProtocol.h"
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
/*Velox Folder Pugin*/


@interface ___FILEBASENAMEASIDENTIFIER___ : UIView <VeloxFolderViewProtocol>
//Add properties, iVars here
@end



@implementation ___FILEBASENAMEASIDENTIFIER___

-(UIView *)initWithFrame:(CGRect)aFrame{
	self = [super initWithFrame:aFrame];
    if (self){
		//Add subviews, load data, etc.
	}
    return self;
}


+(int)folderHeight{
	return 100; //Make folder bigger on i5 devices?
}


-(void)dealloc{
	//release subviews an other objects here
    [super dealloc];
    
	///
	[super release];
}
@end