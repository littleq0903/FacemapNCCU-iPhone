//
//  myDepartmentViewController.h
//  facemap
//
//  Created by nccucs on 2010/12/28.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface myDepartmentViewController : UITableViewController {
	NSMutableArray *listOfMems;
	NSString *Department;
	
}

- (id)initWithDepart:(NSString *)department;

@property (nonatomic, retain) NSMutableArray *listOfMems;
@property (nonatomic, retain) NSString *Department;

@end
