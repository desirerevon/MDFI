//
//  SecondViewController.m
//  week4
//
//  Created by Desire Gardner on 5/29/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Raw", @"Raw");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}

- (void)viewDidLoad
{
    //create objects
    
    
    //created url
    url = [[NSURL alloc]initWithString:@"http://api.twitter.com/1/statuses/user_timeline/default.xml"];
    
    //requests page called: pass in url not string
    request= [[NSURLRequest alloc] initWithURL:url];
    if (request != nil)
    {
        //requires a request : request var delegate self: viewController recieve actions that connection triggers
        connection = [[NSURLConnection alloc]initWithRequest:request delegate:self];
        
        //creat mutable object
        requestData = [NSMutableData data];
        
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    
    //pass back NS data and added to objects: request data object and append individually
    //check if valid data
    if (data !=nil)
    {
        //add this data to our existing requestData
        [requestData appendData:data];
    }
}


//called when you have ALL data from the request
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    
    NSString *requestString = [[NSString alloc]initWithData:requestData encoding:NSASCIIStringEncoding];
    if(requestString != nil)
    {
        NSLog(@"%@", requestString);
    }
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
