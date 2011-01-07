//
//  allDepartsViewController.m
//  facemap
//
//  Created by 李嘉玲 on 2011/1/3.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "allDepartsViewController.h"
#import "myDepartmentViewController.h"

@implementation allDepartsViewController

//@synthesize all_contentArray;
//@synthesize all_sectionArray;
@synthesize listOfDeparts;

#pragma mark -
#pragma mark View lifecycle

- (id)initWithDepart:(NSString *)department
{
    if (self = [self initWithNibName:@"allDepartsViewController" bundle:nil]) {
        // Custom initialization
        self.title = department;
        //self.text = someText;
    }
	
	
	listOfDeparts = [[NSMutableArray alloc] init];
	
	NSArray *LiArray = [[NSArray arrayWithObjects:@"資訊科學系", @"應用數學系",@"心理系", nil] retain];
    NSArray *FaArray = [[NSArray arrayWithObjects:@"法律系", nil] retain];
	NSArray *WiArray = [[NSArray arrayWithObjects:@"日文系",@"韓文系",@"土語系", nil] retain];
	
	NSDictionary *LiDict = [NSDictionary dictionaryWithObject:LiArray forKey:@"Yuan"];
	NSDictionary *FaDict = [NSDictionary dictionaryWithObject:FaArray forKey:@"Yuan"];
	NSDictionary *WiDict = [NSDictionary dictionaryWithObject:WiArray forKey:@"Yuan"];
	
	[listOfDeparts addObject:LiDict];
	[listOfDeparts addObject:FaDict];
	[listOfDeparts addObject:WiDict];
	
	return self;
	
}

/*
- (void)viewDidLoad {
    [super viewDidLoad];

    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
*/
/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/
/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}
*/
/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
	
	NSString *sectionHeader = nil;
	
	if(section == 0) {
		sectionHeader = @"理學院";
	}
	if(section == 1) {
		sectionHeader = @"法學院";
	}
	if(section==2){
		sectionHeader = @"外語學院";
	}
	return sectionHeader;
}

#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    //return [all_sectionArray count];
	return [listOfDeparts count];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
	//＊＊＊＊不同學院有不同系所個數
	NSDictionary *dictionary = [listOfDeparts objectAtIndex:section];
	NSArray *array = [dictionary objectForKey:@"Yuan"];
	return [array count];
    //return [all_contentArray count];
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

	static NSString *CellIdentifier = @"Cell";
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	if (cell == nil) {
		cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
	}
	NSLog(@"hi i m tableview cell");

	/*
	[cell setText:[all_contentArray objectAtIndex:indexPath.row]];
	cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
	*/
	NSDictionary *dictionary = [listOfDeparts objectAtIndex:indexPath.section];
	NSArray *array = [dictionary objectForKey:@"Yuan"];
	NSString *cellValue = [array objectAtIndex:indexPath.row];
	cell.text = cellValue;
	
	return cell;
	

}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source.
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }   
}
*/


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/


/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here. Create and push another view controller.
    /*
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
    // ...
    // Pass the selected object to the new view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
    [detailViewController release];
    */
	NSString *tt=[[tableView cellForRowAtIndexPath:indexPath] text];
	myDepartmentViewController *allDepartsVC = [[myDepartmentViewController alloc] initWithDepart:tt];
    [self.navigationController pushViewController:allDepartsVC animated:NO];
    [allDepartsVC release];
	[tt release];
	NSLog(@"didSelect");
}


#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


- (void)dealloc {
//	[all_contentArray release];
//	[all_sectionArray release];
    [listOfDeparts release];
	[super dealloc];
}


@end

