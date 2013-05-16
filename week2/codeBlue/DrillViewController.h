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

IBOutlet UISearchBar *mySearchBar;
IBOutlet UITableView *myTableView;  

}




@property (nonatomic, retain) IBOutlet UISearchBar *mySearchBar;

@property (nonatomic,retain) IBOutlet UITableView *myTableView;


@end
