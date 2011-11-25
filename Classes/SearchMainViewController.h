//
//  SearchMainViewController.h
//  DropBoxUIQuickProto_RETRY
//
//  Created by realalien on 11/25/11.
//  Copyright 2011 Spicyhorse Studio. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SearchMainViewController : UIViewController < UITableViewDelegate, UITableViewDataSource> {
	UITableView *thetableView;
	UISearchDisplayController *searchDisplayController;
	UISearchBar *searchBar;
    NSArray *allItems;
    NSArray *searchResults;	
	
	BOOL isTableViewInEditing;
}

@property (nonatomic, retain) IBOutlet UITableView *thetableView;
@property (nonatomic, retain) IBOutlet UISearchDisplayController *searchDisplayController;
@property (nonatomic, retain) IBOutlet UISearchBar *searchBar;
@property (nonatomic, copy) NSArray *allItems;
@property (nonatomic, copy) NSArray *searchResults;

@end
