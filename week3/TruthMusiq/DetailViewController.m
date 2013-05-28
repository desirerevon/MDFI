//
//  DetailViewController.m
//  TruthMusiq
//
//  Created by Desire Gardner on 5/24/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "DetailViewController.h"
#import "mapAnnotation.h"
#import "AppDelegate.h"
#import "ListViewController.h"
#import <MapKit/MapKit.h>

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize mapView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)mapTrack:(CLLocationCoordinate2D)coord title:(NSString *)title
{
    NSString *mapCoo = [[NSString alloc]initWithFormat:@"Lon: %f Lat: %f", coord.longitude, coord.latitude];
    
    locTitle.text = title;
    locNav.text = mapCoo;

    
    MKCoordinateRegion createRegion;
    createRegion.center.latitude = coord.latitude;
    createRegion.center.longitude = coord.longitude;
    createRegion.span.latitudeDelta = 0.03;
    createRegion.span.longitudeDelta = 0.03;
    
    self.mapView.delegate = (id)self;
    
    self.title = title;
    
    [self.mapView setRegion:createRegion animated:YES];
    
    CLLocationCoordinate2D location;
    location.latitude = coord.latitude;
    location.longitude = coord.longitude;
    
	annot=[[mapAnnotation alloc] init];
	annot.coordinate=location;
	annot.title=title;
	annot.title=@"The Truth Musiq";
    
    [mapView addAnnotation:annot];
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation {
    if ([annotation isKindOfClass:[MKUserLocation class]])
        return nil;
    
    MKPinAnnotationView* pinView = (MKPinAnnotationView*)[self.mapView dequeueReusableAnnotationViewWithIdentifier:@"mapAnnotation"];
    
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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
