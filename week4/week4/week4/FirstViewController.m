//
//  FirstViewController.m
//  week4
//
//  Created by Desire Gardner on 5/29/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//  Parsing Used Twitter Reference: thecodeblog.com

#import "FirstViewController.h"
#import "DetailViewController.h"
#import "Parser.h"
#import "DataObject.h"

@implementation FirstViewController

@synthesize customImage = _customImage;
@synthesize tweetsTableView;
@synthesize mainArray;



Parser *xmlParser;
UIImage	 *twitterLogo;
CGRect dateFrame;
UILabel *dateLabel;
CGRect contentFrame;
UILabel *contentLabel;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[xmlParser tweets] count];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"Cell";
	DataObject *currentTweet = [[xmlParser tweets] objectAtIndex:indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        
        UIImage	 *twitterLogo = [UIImage imageNamed:@"twitter-logo.png"];
        
        CGRect imageFrame = CGRectMake(2, 8, 40, 40);
        self.customImage = [[UIImageView alloc] initWithFrame:imageFrame];
        self.customImage.image = twitterLogo;
        [cell.contentView addSubview:self.customImage];
        
        CGRect contentFrame = CGRectMake(45, 2, 265, 30);
        UILabel *contentLabel = [[UILabel alloc] initWithFrame:contentFrame];
        contentLabel.tag = 0011;
        contentLabel.numberOfLines = 2;
        contentLabel.font = [UIFont boldSystemFontOfSize:12];
        [cell.contentView addSubview:contentLabel];
        
        CGRect dateFrame = CGRectMake(45, 40, 265, 10);
        UILabel *dateLabel = [[UILabel alloc] initWithFrame:dateFrame];
        dateLabel.tag = 0012;
        dateLabel.font = [UIFont systemFontOfSize:10];
        [cell.contentView addSubview:dateLabel];
    }
    
	UILabel *contentLabel = (UILabel *)[cell.contentView viewWithTag:0011];
    contentLabel.text = [currentTweet content];
    
	UILabel *dateLabel = (UILabel *)[cell.contentView viewWithTag:0012];
    dateLabel.text = [currentTweet dateCreated];
    
    return cell;
}





- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	return 55;
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailViewController *myDetailView = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    if(myDetailView != nil)
    {
        [self.navigationController pushViewController:myDetailView animated:YES];
        DataObject *showDetails = [mainArray objectAtIndex:indexPath.row];
        [myDetailView:showDetails:content title:showDetails.dateCreated];
    }
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    xmlParser = [[Parser alloc] loadXMLByURL:@"http://api.twitter.com/1/statuses/user_timeline/default.xml"];
    
    twitterLogo = [UIImage imageNamed:@"twitter-logo.png"];
    
    self.title = @"Tweets";
}


- (void)viewDidUnload
{
    [self setTweetsTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
@end
