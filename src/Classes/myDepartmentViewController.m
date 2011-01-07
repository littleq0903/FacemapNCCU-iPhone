//
//  myDepartmentViewController.m
//  facemap
//
//  Created by nccucs on 2010/12/28.
//  Copyright 2010 __chia__. All rights reserved.
//

#import "myDepartmentViewController.h"
#import "allDepartsViewController.h"
#import "fbWebView.h"

@implementation myDepartmentViewController
@synthesize listOfMems;
@synthesize Department;

//還差forkey:Department
- (id)initWithDepart:(NSString *)department
{
    if (self = [self initWithNibName:@"myDepartmentViewController" bundle:nil]) {
        // Custom initialization
        self.title = department;
		self.Department = department;
        //self.text = someText;
    }
	
	
	listOfMems = [[NSMutableArray alloc] init];
	
	NSArray *stuArray = [[NSArray arrayWithObjects:@"李嘉玲", @"孫沒如",@"王蕈褶", nil] retain];
    NSArray *teaArray = [[NSArray arrayWithObjects:@"chenk",@"ccc",@"Chao-Lin", nil] retain];
	
	NSDictionary *stuDict = [NSDictionary dictionaryWithObject:stuArray forKey:@"user"];
	NSDictionary *teaDict = [NSDictionary dictionaryWithObject:teaArray forKey:@"user"];
	
	[listOfMems addObject:stuDict];
	[listOfMems addObject:teaDict];
	
	
	//NSDictionary *departMems= [NSDictionary dictionaryWithObject:listOfMems forKey:@"cs"]
	
    return self;
}

#pragma mark -
#pragma mark View lifecycle

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
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


#pragma mark -
#pragma mark Table view data source



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return [listOfMems count]; //student & professors
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    NSDictionary *dictionary = [listOfMems objectAtIndex:section];
	NSArray *array = [dictionary objectForKey:@"user"];
	return [array count]; //return number of members
	//return [sections objectAtIndex:section].numRows;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

	static NSString *CellIdentifier = @"Cell";
	 
    //NSArray *array = [[NSArray alloc] initWithObjects:[[NSString alloc] initWithString:@"111"],[[NSString alloc] initWithString:@"222"],[[NSString alloc] initWithString:@"333"],[[NSString alloc] initWithString:@"444"],[[NSString alloc] initWithString:@"555"],[[NSString alloc] initWithString:@"666"],nil];
	
	//@"123";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	if (cell == nil) {
		cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
	}
	NSLog(@"hi i m tableview cell");
	 // Configure the cell...
	 //todo *td = [self.todos objectAtIndex:indexPath.row];
	 //cell.textLabel.text = [NSString stringWithFormat:@"%@", td.timeToDo];
	// if(indexPath==1)
/*
	[cell setText:[array objectAtIndex:indexPath.row]];
	//cell.textLabel.text = @"text of cell";
	 //cell.detailTextLabel.text = @"detailTextLabel";
	cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
*/	 
	NSDictionary *dictionary = [listOfMems objectAtIndex:indexPath.section];
	NSArray *array = [dictionary objectForKey:@"user"];
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
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
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
	/*
	allDepartsViewController *allDepartsVC = [[allDepartsViewController alloc] initWithDepart:@"李家玲"];
    [self.navigationController pushViewController:allDepartsVC animated:NO];
    [allDepartsVC release];
	*/
	NSString *user_name=[[tableView cellForRowAtIndexPath:indexPath] text];
	
	fbWebView *fbwb = [[fbWebView alloc] initWithName:user_name];
    [self.navigationController pushViewController:fbwb animated:NO];
    [fbwb release];
	[user_name release];
	
	NSLog(@"didSelect");
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
	
	NSString *sectionHeader = nil;
	
	if(section == 0) {
		sectionHeader = @"學生";
	}
	if(section == 1) {
		sectionHeader = @"教職員工";
	}
	
	return sectionHeader;
}

#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end

