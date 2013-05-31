//
//  DetailViewController.h
//  week4
//
//  Created by Desire Gardner on 5/29/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "DataObject.h"


@interface DetailViewController : UIViewController

{
    
    IBOutlet UIWebView *myDetailView;
    NSURLRequest *request;
    NSURL *url;
    NSURLConnection *connection;
    NSMutableData *requestData;
    
}



@property (nonatomic, strong) IBOutlet UIWebView *myDetailView;


@end
