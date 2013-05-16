//
//  FirstViewController.m
//  codeBlue
//
//  Created by Desire Gardner on 5/13/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "FirstViewController.h"
#import "DrillViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController




/*TAB BAR BUTTON------------------------------------------------------------------------------------------------*/

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Home", @"Home");
        self.tabBarItem.image = [UIImage imageNamed:@"home"];
    }
    return self;
}

/*TAB BAR BUTTON END----------------------------------------------------------------------------------------------*/


-(IBAction)onClickDrill:(id)sender
{
    DrillViewController *drillView = [[DrillViewController alloc] initWithNibName:@"DrillViewController" bundle:nil];
    if (drillView != nil)
    {
        [self.navigationController pushViewController:drillView animated:true];
    }
}




-(void)viewWillAppear:(BOOL)animated
{
    
    self.title=@"HOME";
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    [super viewWillAppear:animated];
}





- (void)viewDidLoad
{
    

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


@end
