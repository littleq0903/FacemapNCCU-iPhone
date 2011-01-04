//
//  facemapViewController.h
//  facemap
//
//  Created by nccucs on 2010/12/27.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface facemapViewController : UIViewController {

	NSString *myDepart;//user's department
}

//-(IBAction) randomChat:(id)sender;
-(IBAction) myDepart:(id)sender;
-(IBAction) allDeparts:(id)sender;
@property (nonatomic, retain) NSString *myDepart;

@end
//test edit
