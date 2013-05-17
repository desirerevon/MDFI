//
//  CustomTableCell.h
//  codeBlue
//
//  Created by Desire Gardner on 5/13/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@interface CustomTableCell : UITableViewCell <UITableViewDelegate>

{
    //set oulets
    IBOutlet UILabel *contactName;
    
}
//set properties
@property (nonatomic, retain) IBOutlet UILabel *contactName;


@end
