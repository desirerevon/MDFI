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
  
    IBOutlet UITextView *textForDetail;
    NSString *contactName;


}


@property (nonatomic, retain)  IBOutlet UITextView *textForDetail;
@property (nonatomic, retain) NSString *contactName;

-(IBAction)onReturn:(id)sender;
-(id)initWithTextSelected:(NSString*)text;



@end
