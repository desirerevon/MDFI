//
//  ThirdViewController.m
//  codeBlue
//
//  Created by Desire Gardner on 5/13/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController




/*TAB BAR BUTTON------------------------------------------------------------------------------------------------*/

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Safari", @"Safari");
        self.tabBarItem.image = [UIImage imageNamed:@"third"];
    }
    return self;
}


/*TAB BAR BUTTON END--------------------------------------------------------------------------------------------*/


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)viewWillAppear:(BOOL)animated
{
    
    self.title=@"SAFARI";
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    [super viewWillAppear:animated];
}

//google method
-(IBAction)onClickInternet:(id)sender
{
    NSURL *url = [NSURL URLWithString:@"http://www.google.com"];
    
    if (url != nil)
    {
        [[UIApplication sharedApplication] openURL:url];
    }
}




@end
