//
//  ListViewController.h
//  TruthMusiq
//
//  Created by Desire Gardner on 5/24/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Mapkit/Mapkit.h>
#import "mapAnnotation.h"

@interface ListViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

{
    IBOutlet UITableView *mytableView;
    NSMutableArray *events;
    mapAnnotation *annotate;

}

@property (nonatomic, retain) NSMutableArray *events;


@end
