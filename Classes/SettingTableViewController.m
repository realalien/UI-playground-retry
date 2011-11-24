//
//  SettingTableViewController.m
//  DropBoxUIQuickProto_RETRY
//
//  Created by realalien on 11/24/11.
//  Copyright 2011 Spicyhorse Studio. All rights reserved.
//

#import "SettingTableViewController.h"
#import "UploadQualityDetailsViewController.h"
#import "DropBoxUIQuickProto_RETRYAppDelegate.h"


@implementation SettingTableViewController

@synthesize uploadQualityDetailsViewController;

@synthesize settingTableView;
//APPLICATION_INFO
@synthesize dropBoxHelpCell;
@synthesize appVersionCell;
@synthesize appVersionLabel;
//ACCOUNT_INFO
@synthesize accountLabel;

@synthesize emailCell;
@synthesize spaceUsedCell;
@synthesize emailLabel;
@synthesize spaceUsedLabel;

// SETTINGS
@synthesize settingSectionLabel;
@synthesize uploadQualityCell;
@synthesize passcodeLockCell;
@synthesize localStorageCell;
@synthesize passcodeLockStatusLabel;
@synthesize localStorageSizeLabel;

//INTRO_FEEDBACK
@synthesize viewIntroCell;
@synthesize tellFriendsCell;
@synthesize sendFeedbackCell;

// UNLINK_ACCOUNT
@synthesize unlinkAccountCell;

#pragma mark -
#pragma mark Initialization


- (id)initWithStyle:(UITableViewStyle)style {
    // Override initWithStyle: if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization.
    }
    return self;
}


#pragma mark -
#pragma mark View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];

    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
	self.title = @"Settings";
}


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
    return numOfCategory;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
	if (tableView == self.settingTableView) {
		if (section == APPLICATION_INFO) {
			return 2;
		}else if (section == ACCOUNT_INFO) {
			return 2;
		}else if (section == SETTINGS) {
			return 3;
		}else if (section == INTRO_FEEDBACK) {
			return 3;
		}else if (section == UNLINK_ACCOUNT) {
			return 1;
		}
	}	
	
    return 0;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	// section 0 - app info
    if (indexPath.section == APPLICATION_INFO) {
        if (indexPath.row == 0) {
			return dropBoxHelpCell;
		}else if (indexPath.row == 1) {
			return appVersionCell;
		}
    }
    // section 1  - account info
	if (indexPath.section == ACCOUNT_INFO) {
		
        if (indexPath.row == 0) {
			return emailCell;
		}else if (indexPath.row == 1) {
			return spaceUsedCell;
		}
    }
	
	
	// section 2  - local storage setting
	if (indexPath.section == SETTINGS) {		
        if (indexPath.row == 0) {
			return uploadQualityCell;
		}else if (indexPath.row == 1) {
			return passcodeLockCell;
		}else if (indexPath.row == 2) {
			return localStorageCell;
		}
    }
	
	// section 3  -  communication
	if (indexPath.section == INTRO_FEEDBACK) {		
        if (indexPath.row == 0) {
			return viewIntroCell;
		}else if (indexPath.row == 1) {
			return tellFriendsCell;
		}else if (indexPath.row == 2) {
			return sendFeedbackCell;
		}
    }
	
	// section  ?   - unlink account 
	if (indexPath.section == UNLINK_ACCOUNT) {		
        if (indexPath.row == 0) {
			return unlinkAccountCell;
		}
    }
	
	
	return nil;
	
	
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

// Q: TODO: if there are many detail views, how to mgmt the views? A:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here. Create and push another view controller.
	
	NSInteger sect = indexPath.section;
	NSInteger row = indexPath.row;

	
	DropBoxUIQuickProto_RETRYAppDelegate *delegate = (DropBoxUIQuickProto_RETRYAppDelegate *)[[UIApplication sharedApplication]delegate];
	if (sect == SETTINGS && row == 0) {
		if ( self.uploadQualityDetailsViewController == nil) {
			UploadQualityDetailsViewController *aDetail = [[UploadQualityDetailsViewController alloc] initWithNibName:@"UploadQualityDetailsView" bundle:nil];
			self.uploadQualityDetailsViewController = aDetail ;
			[aDetail release];
		}
		
		uploadQualityDetailsViewController.title = @"Upload Quality";
		[delegate.settingNavigationController pushViewController:uploadQualityDetailsViewController animated:YES];
	}
	
	
    /*
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
    [detailViewController release];
    */
}


- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
	if (tableView == self.settingTableView) {
		if (section == APPLICATION_INFO) {
			return nil;
		}else if (section == ACCOUNT_INFO) {
			return accountLabel;
		}else if (section == SETTINGS) {
			return accountLabel;
		}else if (section == UNLINK_ACCOUNT) {
			return nil;
		}
	}
	
	return nil;
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
	[uploadQualityDetailsViewController release];
    [super dealloc];
}



#pragma mark -
#pragma mark IBAction

-(IBAction) unlinkAccount{
	NSLog(@"unlink account,  TODO:unimplemented.");
}


@end

