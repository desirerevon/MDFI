//
//  FirstViewController.h
//  week4
//
//  Created by Desire Gardner on 5/29/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "Parser.h"
#import "DataObject.h"

@interface FirstViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray *mainArray;
}
@property (nonatomic, retain) UIImageView *customImage;
@property (weak, nonatomic) IBOutlet UITableView *tweetsTableView;
@property (nonatomic, retain) NSMutableArray *mainArray;
@end