//
//  AppDelegate.h
//  week4
//
//  Created by Desire Gardner on 5/29/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "DataObject.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>
{
    
    FirstViewController *listView;
    SecondViewController *myView;
    
    
}


@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) IBOutlet UITabBarController *tabBarController;
@property (strong, nonatomic) FirstViewController *listView;
@property (strong, nonatomic) SecondViewController *myView;

@end