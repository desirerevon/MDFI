//
//  AppDelegate.h
//  TruthMusiq
//
//  Created by Desire Gardner on 5/24/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "mapAnnotation.h"
#import "MapViewController.h"
#import "ListViewController.h"


@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>
{
    mapAnnotation *one;
    mapAnnotation *two;
    mapAnnotation *three;
    mapAnnotation *four;
    mapAnnotation *five;
    mapAnnotation *six;
    mapAnnotation *seven;
    mapAnnotation *eight;
    mapAnnotation *nine;
    mapAnnotation *ten;
    
    ListViewController *list;
    MapViewController *maps;
}




@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UITabBarController *tabBarController;

@property (nonatomic,retain) ListViewController *list;
@property (nonatomic,retain) MapViewController *maps;
@property (nonatomic, retain) NSMutableArray *drArray;

@property (nonatomic,retain)   mapAnnotation *one;
@property (nonatomic,retain)   mapAnnotation *two;
@property (nonatomic,retain)   mapAnnotation *three;
@property (nonatomic,retain)   mapAnnotation *four;
@property (nonatomic,retain)   mapAnnotation *five;
@property (nonatomic,retain)   mapAnnotation *six;
@property (nonatomic,retain)   mapAnnotation *seven;
@property (nonatomic,retain)   mapAnnotation *eight;
@property (nonatomic,retain)   mapAnnotation *nine;
@property (nonatomic,retain)   mapAnnotation *ten;

-(void)getArray;


@end