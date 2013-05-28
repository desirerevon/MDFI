//
//  MapViewController.m
//  TruthMusiq
//
//  Created by Desire Gardner on 5/24/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "MapViewController.h"
#import "AppDelegate.h"
#import "mapAnnotation.h"
#import "ListViewController.h"
#import <MapKit/MapKit.h>

@interface MapViewController ()

@end

@implementation MapViewController

@synthesize one, two, three, four, five, six, seven, eight, nine, ten, listView, arrayName, arrayTitle, arrayLocation;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Map", @"Map");
        self.tabBarItem.image = [UIImage imageNamed:@"map"];
    }
    return self;
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation {
    if ([annotation isKindOfClass:[MKUserLocation class]])
        return nil;
    
    MKPinAnnotationView* pinView = (MKPinAnnotationView*)[self.listView dequeueReusableAnnotationViewWithIdentifier:@"mapAnnotation"];
    
    if (!pinView)
        pinView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"CustomPinAnnotation"];
    else
        
    pinView.enabled = YES;
    pinView.canShowCallout = YES;
    
    return pinView;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.tintColor=[UIColor blackColor];
    
    // Do any additional setup after loading the view from its nib.
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:TRUE];
    
    MKCoordinateRegion createRegion;
    createRegion.center.latitude = 29.424122;
    createRegion.center.longitude = -98.493628;
    createRegion.span.latitudeDelta = .8;
    createRegion.span.longitudeDelta = .8;
    
    self.listView.delegate = self;
    
    [self.listView setRegion:createRegion animated:YES];
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [appDelegate drArray];
    arrayLocation = appDelegate.drArray;
    
    
    [listView removeAnnotations:listView.annotations];
    for (int i = 0; arrayLocation.count > i; i++)
    {
        mapAnnotation *userLoc = [arrayLocation objectAtIndex:i];
        [listView addAnnotation: userLoc];
    }
    
}



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
