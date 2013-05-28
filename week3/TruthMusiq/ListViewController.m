//
//  ListViewController.m
//  TruthMusiq
//
//  Created by Desire Gardner on 5/24/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "ListViewController.h"
#import  <MapKit/MapKit.h>
#import "mapAnnotation.h"
#import "AppDelegate.h"
#import "DetailViewController.h"
#import "MapViewController.h"

@interface ListViewController ()

@end

@implementation ListViewController

@synthesize events;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Events", @"Events");
        //self.tabBarItem.image = [UIImage imageNamed:@"calendar"];
    }
    return self;
}


- (void)viewDidLoad
{
    
    self.navigationController.navigationBar.tintColor=[UIColor blackColor];
    
    UIBarButtonItem *rButton =[[UIBarButtonItem alloc]initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:self action:@selector(nowEdit)];
    
    self.navigationItem.rightBarButtonItem = rButton;
    
    self.navigationItem.rightBarButtonItem = rButton;
    
    [super viewDidLoad];

    
    AppDelegate *nowDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [nowDelegate getArray];
    events = nowDelegate.drArray;
    
    //add coordinates for events
    CLLocationCoordinate2D theCoo1; //the place
    theCoo1.latitude = 29.428476;
    theCoo1.longitude = -98.530823;
    
	CLLocationCoordinate2D theCoo2; //the bayseas
    theCoo2.latitude =  29.42781;
    theCoo2.longitude = -98.405766;
    
	CLLocationCoordinate2D theCoo3; //hemisphere park
    theCoo3.latitude =29.422773;
    theCoo3.longitude = -98.487362;
    
	CLLocationCoordinate2D theCoo4; //botanical garden
    theCoo4.latitude = 29.457844;
    theCoo4.longitude = -98.460159;
    
    CLLocationCoordinate2D theCoo5; // sunset station
    theCoo5.latitude =29.41945;
    theCoo5.longitude = -98.456763;
    
    CLLocationCoordinate2D theCoo6;// mission conception
    theCoo6.latitude = 29.390291;
    theCoo6.longitude = -98.491753;
    
    CLLocationCoordinate2D theCoo7;//brackenridge park next to hemisphere when you zoom in
    theCoo7.latitude =29.422658;
    theCoo7.longitude = -98.48699;
    
    CLLocationCoordinate2D theCoo8;//raymond rimkus park
    theCoo8.latitude = 29.492442;
    theCoo8.longitude = -98.61057;
    
    CLLocationCoordinate2D theCoo9;//travis park
    theCoo9.latitude =29.427473;
    theCoo9.longitude = -98.490552;
    
    CLLocationCoordinate2D theCoo10;//tejas valley rv and campground park
    theCoo10.latitude = 29.425929;
    theCoo10.longitude = -98.754404;
    
    //annotate the title and location
	mapAnnotation* mapAnnotation1=[[mapAnnotation alloc] init];
    
	mapAnnotation1.coordinate=theCoo1;
	mapAnnotation1.title=@"The Place";//on map
    
    mapAnnotation* mapAnnotation2=[[mapAnnotation alloc] init];
    
	mapAnnotation2.coordinate=theCoo2;
	mapAnnotation2.title=@"Bayseas";//on map
    
    mapAnnotation* mapAnnotation3=[[mapAnnotation alloc] init];
    
	mapAnnotation3.coordinate=theCoo3;
	mapAnnotation3.title=@"Hemisphere Park";//on map
    
    mapAnnotation* mapAnnotation4=[[mapAnnotation alloc] init];
    
	mapAnnotation4.coordinate=theCoo4;
	mapAnnotation4.title=@"Botanical Garden";//on map
    
    mapAnnotation* mapAnnotation5=[[mapAnnotation alloc] init];
    
	mapAnnotation5.coordinate=theCoo5;
	mapAnnotation5.title=@"Sunset Station";//on map
    
    mapAnnotation* mapAnnotation6=[[mapAnnotation alloc] init];
    
	mapAnnotation6.coordinate=theCoo6;
	mapAnnotation6.title=@"Mission coneption";//on map
    
    mapAnnotation* mapAnnotation7=[[mapAnnotation alloc] init];
    
	mapAnnotation7.coordinate=theCoo7;
	mapAnnotation7.title=@"Brackenridge Park";
    
    mapAnnotation* mapAnnotation8=[[mapAnnotation alloc] init];
    
	mapAnnotation8.coordinate=theCoo8;
	mapAnnotation8.title=@"Raymond Rimkus Park";//on map
    
    mapAnnotation* mapAnnotation9=[[mapAnnotation alloc] init];//on map
    
	mapAnnotation9.coordinate=theCoo9;
	mapAnnotation9.title=@"Travis Park";//on map
    
    mapAnnotation* mapAnnotation10=[[mapAnnotation alloc] init];
    
	mapAnnotation10.coordinate=theCoo10;
	mapAnnotation10.title=@"Tejas Valley Campground"; //on map

    
	
    //add object events
	[events addObject:mapAnnotation1];
	[events addObject:mapAnnotation2];
	[events addObject:mapAnnotation3];
	[events addObject:mapAnnotation4];
    [events addObject:mapAnnotation5];
    [events addObject:mapAnnotation6];
    [events addObject:mapAnnotation7];
    [events addObject:mapAnnotation8];
    [events addObject:mapAnnotation9];
    [events addObject:mapAnnotation10];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)nowEdit
{
    [mytableView setEditing:!mytableView.editing animated:YES];
    
    if (mytableView.editing)
    {
        [self.navigationItem.rightBarButtonItem setTitle:@"Done"];
    }
    else
    {
        [self.navigationItem.rightBarButtonItem setTitle:@"Edit"];
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return events.count;
}



- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}



- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(editingStyle == UITableViewCellEditingStyleDelete)
    {
        [events removeObjectAtIndex:indexPath.row];
        NSLog(@"new count: %i",events.count);
        [mytableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:true];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    mapAnnotation *location = [events objectAtIndex:indexPath.row];
	cell.textLabel.text = location.title;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailViewController *details = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    if (details != nil)
    {
        [self.navigationController pushViewController:details animated:YES];
         mapAnnotation *addPin = [events objectAtIndex:indexPath.row];
        [details mapTrack:addPin.coordinate title:addPin.title];
    }
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
