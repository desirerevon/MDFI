//
//  DetailViewController.h
//  maleBond
//
//  Created by Desire Gardner on 5/8/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
{
IBOutlet UIImageView *imageD;
IBOutlet UITextView *textForDetail;


}

@property (nonatomic, retain) IBOutlet UILabel *moreDetailText;
@property (nonatomic, retain) IBOutlet UIImageView *imageD;
@property (nonatomic, retain) IBOutlet UITextView *textForDetails;




-(IBAction)returnToMainView:(id)sender;

@end
