//
//  SecondViewController.m
//  week4
//
//  Created by Desire Gardner on 5/29/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Raw", @"Raw");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.tintColor=[UIColor blackColor];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


@end


