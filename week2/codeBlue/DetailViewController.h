//
//  DetailViewController.h
//  codeBlue
//
//  Created by Desire Gardner on 5/13/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

{
  //set outlets and str
    IBOutlet UITextView *textForDetail;
    NSString *contactName;


}

//set properties
@property (nonatomic, retain)  IBOutlet UITextView *textForDetail;
@property (nonatomic, retain) NSString *contactName;

//set actions
-(IBAction)onReturn:(id)sender;



@end
