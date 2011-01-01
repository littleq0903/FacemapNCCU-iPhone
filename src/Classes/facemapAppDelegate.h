//
//  facemapAppDelegate.h
//  facemap
//
//  Created by nccucs on 2010/12/27.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class facemapViewController;
//@class allDepartmentsViewController;

@interface facemapAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    facemapViewController *viewController;
	UINavigationController *navigationController;
	//allDepartmentsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet facemapViewController *viewController;
//@property (nonatomic,retain) IBOutlet allDepartmentsViewController *viewController;

@end

