//
//  mapAnnotation.h
//  TruthMusiq
//
//  Created by Desire Gardner on 5/24/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface mapAnnotation : NSObject <MKAnnotation>

{
     CLLocationCoordinate2D coordinate;
    NSString* title;
    NSString* name;
    NSString* contact;

}



@property (nonatomic, assign)	 CLLocationCoordinate2D coordinate;
@property (nonatomic, copy)		NSString*		title;
@property (nonatomic, copy)		NSString*	    name;
@property (nonatomic, copy)		NSString*	    contact;


@end
