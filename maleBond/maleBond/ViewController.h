//
//  ViewController.h
//  maleBond
//
//  Created by Desire Gardner on 5/8/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate>

{
    //setup outlets
    IBOutlet UITableView *mbTableView;
    IBOutlet UIButton *editButton;
    
    //Array Data
    NSMutableArray *list;
    NSMutableArray *moreDetails;
    NSMutableArray *imageDetail;
    NSMutableArray *moreDetailText;
    NSMutableArray *text;

}

//Actions

-(IBAction)onEdit:(id)sender;

@end
