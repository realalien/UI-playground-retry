//
//  SettingTableViewController.h
//  DropBoxUIQuickProto_RETRY
//
//  Created by realalien on 11/24/11.
//  Copyright 2011 Spicyhorse Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

enum SectionCategory{
    APPLICATION_INFO,
    ACCOUNT_INFO,
	SETTINGS,
	INTRO_FEEDBACK,
    UNLINK_ACCOUNT,
	numOfCategory
} ;

@class UploadQualityDetailsViewController;

@interface SettingTableViewController : UITableViewController <UITableViewDelegate,UITableViewDataSource>{

	// details views
	UploadQualityDetailsViewController *uploadQualityDetailsViewController;
	
	//APPLICATION_INFO
	UITableView *settingTableView;	
	UITableViewCell *dropBoxHelpCell;
    UITableViewCell *appVersionCell;
    UILabel *appVersionLabel;
	
	//ACCOUNT_INFO
	UILabel *accountLabel ;  // section header
	
	UITableViewCell *emailCell;
    UITableViewCell *spaceUsedCell;
    UILabel *emailLabel;
	UILabel *spaceUsedLabel;
	
	// SETTINGS
	UILabel *settingSectionLabel;
	
	UITableViewCell *uploadQualityCell;
	UITableViewCell *passcodeLockCell;
	UITableViewCell *localStorageCell;
	UILabel *passcodeLockStatusLabel;
	UILabel *localStorageSizeLabel;
	
	//INTRO_FEEDBACK
	UITableViewCell *viewIntroCell;
	UITableViewCell *tellFriendsCell;
	UITableViewCell *sendFeedbackCell;
	
	// UNLINK_ACCOUNT
	UITableViewCell *unlinkAccountCell;
}



// detail views
@property (nonatomic, retain) IBOutlet UploadQualityDetailsViewController *uploadQualityDetailsViewController;


@property (nonatomic, retain) IBOutlet UITableView *settingTableView;
//APPLICATION_INFO
@property (nonatomic, retain) IBOutlet UITableViewCell *dropBoxHelpCell;
@property (nonatomic, retain) IBOutlet UITableViewCell *appVersionCell;
@property (nonatomic, retain) IBOutlet UILabel *appVersionLabel;
//ACCOUNT_INFO
@property (nonatomic, retain) IBOutlet UILabel *accountLabel ;

@property (nonatomic, retain) IBOutlet UITableViewCell *emailCell;
@property (nonatomic, retain) IBOutlet UITableViewCell *spaceUsedCell;
@property (nonatomic, retain) IBOutlet UILabel *emailLabel;
@property (nonatomic, retain) IBOutlet UILabel *spaceUsedLabel;
// SETTINGS

@property (nonatomic, retain) IBOutlet UILabel *settingSectionLabel;
@property (nonatomic, retain) IBOutlet UITableViewCell *uploadQualityCell;
@property (nonatomic, retain) IBOutlet UITableViewCell *passcodeLockCell;
@property (nonatomic, retain) IBOutlet UITableViewCell *localStorageCell;
@property (nonatomic, retain) IBOutlet UILabel *passcodeLockStatusLabel;
@property (nonatomic, retain) IBOutlet UILabel *localStorageSizeLabel;
//INTRO_FEEDBACK
@property (nonatomic, retain) IBOutlet UITableViewCell *viewIntroCell;
@property (nonatomic, retain) IBOutlet UITableViewCell *tellFriendsCell;
@property (nonatomic, retain) IBOutlet UITableViewCell *sendFeedbackCell;
// UNLINK_ACCOUNT
@property (nonatomic, retain) IBOutlet UITableViewCell *unlinkAccountCell;


-(IBAction) unlinkAccount;


@end



