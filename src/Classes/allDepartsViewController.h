//
//  allDepartsViewController.h
//  facemap
//
//  Created by 李嘉玲 on 2011/1/3.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface allDepartsViewController : UITableViewController {

	//NSArray *all_contentArray;//系所 in nccu 
	//NSArray *all_sectionArray;//院 in nccu
	NSMutableArray *listOfDeparts;
}

//@property (nonatomic, retain) NSArray *all_contentArray;
//@property (nonatomic, retain) NSArray *all_sectionArray;
@property (nonatomic, retain) NSArray *listOfDeparts;

@end
