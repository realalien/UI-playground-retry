//
//  UploadQualityDetailsViewController.h
//  DropBoxUIQuickProto_RETRY
//
//  Created by realalien on 11/24/11.
//  Copyright 2011 Spicyhorse Studio. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface UploadQualityDetailsViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource> {

	UITableView *qualitySelectionTableView;
	UILabel *photoQualityLabel;
	UITableViewCell *photoQualityOrigninalCell;
	UITableViewCell *photoQualityHighCell;
	UITableViewCell *photoQualityMediumCell;
	UITableViewCell *photoQualityLowCell;
	
	UILabel *videoQualityLabel;
	UITableViewCell *videoQualityOrigninalCell;
	UITableViewCell *videoQualityHighCell;
	UITableViewCell *videoQualityMediumCell;
	UITableViewCell *videoQualityLowCell;
	
}

@property (nonatomic, retain) IBOutlet UITableView *qualitySelectionTableView;
@property (nonatomic, retain) IBOutlet UILabel *photoQualityLabel;
@property (nonatomic, retain) IBOutlet UITableViewCell *photoQualityOrigninalCell;
@property (nonatomic, retain) IBOutlet UITableViewCell *photoQualityHighCell;
@property (nonatomic, retain) IBOutlet UITableViewCell *photoQualityMediumCell;
@property (nonatomic, retain) IBOutlet UITableViewCell *photoQualityLowCell;


@property (nonatomic, retain) IBOutlet UILabel *videoQualityLabel;
@property (nonatomic, retain) IBOutlet UITableViewCell *videoQualityOrigninalCell;
@property (nonatomic, retain) IBOutlet UITableViewCell *videoQualityHighCell;
@property (nonatomic, retain) IBOutlet UITableViewCell *videoQualityMediumCell;
@property (nonatomic, retain) IBOutlet UITableViewCell *videoQualityLowCell;

@end
