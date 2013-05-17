//
//  DrillViewController.h
//  codeBlue
//
//  Created by Desire Gardner on 5/15/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrillViewController : UIViewController <UISearchBarDelegate, UITableViewDelegate, UITableViewDataSource>

{
//set outlets
IBOutlet UISearchBar *mySearchBar;
IBOutlet UITableView *myTableView;  

}


//set properties

@property (nonatomic, retain) IBOutlet UISearchBar *mySearchBar;

@property (nonatomic,retain) IBOutlet UITableView *myTableView;


@end
