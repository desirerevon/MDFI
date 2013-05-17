//
//  ChatViewController.h
//  codeBlue
//
//  Created by Desire Gardner on 5/16/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatViewController : UITableViewController

{
    //set arrays
    NSMutableArray *Derek;
    NSMutableArray *Dominique;
    NSMutableArray *Emily;
    NSMutableArray *Jasmine;
    NSMutableArray *James;
    NSMutableArray *Amanda;
    NSMutableArray *Justin;
    NSMutableArray *Jeff;
    NSMutableArray *Aaron;
    NSMutableArray *Liana;
    int contactInt;
    


}

@property int contactInt; //if item gets pressed we want to set the amount of data in next view

@end
