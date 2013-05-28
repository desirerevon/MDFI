//
//  MapViewController.h
//  TruthMusiq
//
//  Created by Desire Gardner on 5/24/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "mapAnnotation.h"

@interface MapViewController : UIViewController <MKMapViewDelegate>

{
    IBOutlet MKMapView *listView;
    NSMutableArray *arrayName;
    NSMutableArray *arrayTitle;
    NSMutableArray *arrayLocation;
    
    mapAnnotation *annot;
    mapAnnotation *annot2;
    
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
}



@property (retain) IBOutlet MKMapView *listView;

@property (nonatomic, retain) NSMutableArray *arrayName;
@property (nonatomic, retain) NSMutableArray *arrayTitle;
@property (nonatomic, retain) NSMutableArray *arrayLocation;

@property (nonatomic,retain) mapAnnotation *one;
@property (nonatomic,retain) mapAnnotation *two;
@property (nonatomic,retain) mapAnnotation *three;
@property (nonatomic,retain) mapAnnotation *four;
@property (nonatomic,retain) mapAnnotation *five;
@property (nonatomic,retain) mapAnnotation *six;
@property (nonatomic,retain) mapAnnotation *seven;
@property (nonatomic,retain) mapAnnotation *eight;
@property (nonatomic,retain) mapAnnotation *nine;
@property (nonatomic,retain) mapAnnotation *ten;







@end
