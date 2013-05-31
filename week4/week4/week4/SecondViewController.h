//
//  SecondViewController.h
//  week4
//
//  Created by Desire Gardner on 5/29/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol viewXML <NSObject>

@required
- (NSString *)xmlDataString;

@end



@interface SecondViewController : UIViewController

{
    
    IBOutlet UITextView *textView;
    
    id<viewXML> delegate;
}


@property (strong) id<viewXML> delegate;
@property (nonatomic, strong) IBOutlet UITextView *textView;
@property (nonatomic, strong) NSString *xmlRaw;


@end