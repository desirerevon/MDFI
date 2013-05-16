//
//  ChatViewController.m
//  codeBlue
//
//  Created by Desire Gardner on 5/16/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "ChatViewController.h"

@interface ChatViewController ()

@end

@implementation ChatViewController

@synthesize contactInt;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)dealloc

{
    [Derek release];
    [Dominique release];
    [Emily release];
    [Jasmine release];
    
    
    [super dealloc];
}

- (void)viewDidLoad
{
    Derek = [[NSMutableArray alloc]
             initWithObjects:@"Message1", @"Message 2", @"Message 3", nil];
    Dominique  = [[NSMutableArray alloc]
             initWithObjects:@"Message1", @"Message 2", nil];
    Emily = [[NSMutableArray alloc]
             initWithObjects:@"Message1", nil];
    Jasmine = [[NSMutableArray alloc]
             initWithObjects:@"Message1", @"Message 2", @"Message 3", nil];
    
    
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

//issues with th functionality
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    if (contactInt == 0)
    {
        return  [Derek count];
    }
    
    if (contactInt == 1)
    {
        return  [Dominique count];
    }
    if (contactInt == 2)
    {
        return  [Emily count];
    }
    if (contactInt == 3)
    {
        return  [Jasmine count];
    }
    
    else
    {
    
     [self.tableView reloadData];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...
    if (contactInt == 0)
    {
        cell.textLabel.text = [[Derek objectAtIndex:indexPath.row]retain];
    }
    
    if (contactInt == 1)
    {
        cell.textLabel.text = [[Dominique objectAtIndex:indexPath.row]retain];
    }

    if (contactInt == 2)
    {
        cell.textLabel.text = [[Emily objectAtIndex:indexPath.row]retain];
    }

    if (contactInt == 3)
    {
        cell.textLabel.text = [[Jasmine objectAtIndex:indexPath.row]retain];
    }

    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
     */
}

@end
