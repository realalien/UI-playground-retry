//
//  UploadQualityDetailsViewController.m
//  DropBoxUIQuickProto_RETRY
//
//  Created by realalien on 11/24/11.
//  Copyright 2011 Spicyhorse Studio. All rights reserved.
//

#import "UploadQualityDetailsViewController.h"


@implementation UploadQualityDetailsViewController


@synthesize qualitySelectionTableView;
@synthesize photoQualityLabel;
@synthesize photoQualityOrigninalCell;
@synthesize photoQualityHighCell;
@synthesize photoQualityMediumCell;
@synthesize photoQualityLowCell;

@synthesize videoQualityLabel;
@synthesize videoQualityOrigninalCell;
@synthesize videoQualityHighCell;
@synthesize videoQualityMediumCell;
@synthesize videoQualityLowCell;


#pragma mark -
#pragma mark Initialization

/*
- (id)initWithStyle:(UITableViewStyle)style {
    // Override initWithStyle: if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/

- (id)initWithNibName:(NSString *)nibNameOrNull bundle:bundle {
    if ((self = [super initWithNibName:nibNameOrNull bundle: bundle])) {
        // Custom initialization
    }
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
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 2;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 4;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

	// section 0 - photo quality
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
			return photoQualityOrigninalCell;
		}else if (indexPath.row == 1) {
			return photoQualityHighCell;
		}else if (indexPath.row == 2) {
			return photoQualityMediumCell;
		}else if (indexPath.row == 3) {
			return photoQualityLowCell;
		}
    }
	
	if (indexPath.section == 1) {
        if (indexPath.row == 0) {
			return videoQualityOrigninalCell;
		}else if (indexPath.row == 1) {
			return videoQualityHighCell;
		}else if (indexPath.row == 2) {
			return videoQualityMediumCell;
		}else if (indexPath.row == 3) {
			return videoQualityLowCell;
		}
    }
	
	return nil;  // TODO: find a better solution for later maintenance.
	
//    static NSString *CellIdentifier = @"Cell";
//    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//    if (cell == nil) {
//        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
//    }
//    
//    // Configure the cell...
//    
//    return cell;
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
	
	NSInteger selectedSection = indexPath.section;
	NSInteger selectedRow = indexPath.row;
	NSInteger numOfRowsInThisSect  = [tableView numberOfRowsInSection:selectedSection];
	
	
	if (tableView == self.qualitySelectionTableView) {
		for (int i=0; i< numOfRowsInThisSect; i++ ) {
			NSIndexPath *idx = [NSIndexPath indexPathForRow:i inSection:selectedSection];
			if (i == selectedRow ) {
				[tableView cellForRowAtIndexPath:idx].accessoryType = UITableViewCellAccessoryCheckmark;
			}else {
				[tableView cellForRowAtIndexPath:idx].accessoryType = UITableViewCellAccessoryNone;
			}
		}		
	}
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
	
	
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
	if (tableView == self.qualitySelectionTableView) {
		if (section == 0) {
			return photoQualityLabel;
		}else if (section == 1) {
			return videoQualityLabel;
		}
	}
	
	return nil;  // TOOD: unsafe
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
	return 30;
	
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
    [super dealloc];
}






@end

