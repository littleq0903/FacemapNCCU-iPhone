//
//  facemapViewController.m
//  facemap
//
//  Created by nccucs on 2010/12/27.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "facemapViewController.h"
#import "myDepartmentViewController.h"
#import "allDepartmentsViewController.h"

@implementation facemapViewController

- (IBAction)randomChat:(id)sender
{
    //random choose one to chat 
	NSLog(@"randomChat");
}


-(IBAction) myDepart:(id)sender{

	myDepartmentViewController *myDepartVC = [[myDepartmentViewController alloc] initWithDepart:@"Computer Science"];
	[self.navigationController pushViewController:myDepartVC animated:YES];
    [myDepartVC release];
	
	NSLog(@"myDepart");
}

-(IBAction) allDeparts:(id)sender;{

	allDepartmentsViewController *allDepartsVC = [[allDepartmentsViewController alloc] initWithDepart:@"全校系所"];
    [self.navigationController pushViewController:allDepartsVC animated:NO];
    [allDepartsVC release];
	NSLog(@"allDeparts");	

}


// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
        self.title = @"FACEMAP";
    }
    return self;
}
/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
