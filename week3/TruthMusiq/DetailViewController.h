//
//  DetailViewController.h
//  TruthMusiq
//
//  Created by Desire Gardner on 5/24/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "mapAnnotation.h"

@interface DetailViewController : UIViewController

{
    IBOutlet MKMapView *mapView;
    mapAnnotation* annot;
    
    IBOutlet UILabel *locTitle;
    IBOutlet UILabel *locNav;

}

@property (retain) IBOutlet MKMapView *mapView;
- (IBAction)mapTrack:(CLLocationCoordinate2D)coord title:(NSString *)title;

@end
