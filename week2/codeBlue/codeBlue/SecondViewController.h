//
//  SecondViewController.h
//  codeBlue
//
//  Created by Desire Gardner on 5/13/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@interface SecondViewController : UIViewController <UITableViewDelegate>


{
    IBOutlet UITableView *contactTableView;
   
    NSMutableArray *contactList;
    NSMutableArray *contactLabel;
    NSMutableArray *contactImages;
    NSMutableArray *webLinks;
    
    DetailViewController *detailView;
}

@property (nonatomic, retain) DetailViewController *detailView;




@end
