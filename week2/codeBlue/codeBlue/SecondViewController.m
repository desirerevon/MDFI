//
//  SecondViewController.m
//  codeBlue
//
//  Created by Desire Gardner on 5/13/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "SecondViewController.h"
#import "DetailViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize detailView;


/*TAB BAR BUTTON------------------------------------------------------------------------------------------------*/

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Contacts", @"Contacts");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}

/*TAB BAR BUTTON END--------------------------------------------------------------------------------------------*/


-(void)viewWillAppear:(BOOL)animated
{
    
    self.title=@"CONTACTS";
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    [super viewWillAppear:animated];
}


- (void)viewDidLoad
{
    //Data Arrays
    contactList = [[NSMutableArray alloc] initWithObjects:
                @"James Doe",
                @"Amanda Doe",
                @"Jasmine Doe",
                @"Justin Doe",
                @"Aaron Doe",
                @"Mike Doe",
                @"Joe Doe",
                @"Karen Doe",
                @"Jeff Doe",
                @"Michael Doe",
                @"Brian Doe",
                @"Ashley Doe",
                @"Ryan Doe",
                @"Maria Doe",
                @"Emily Doe",
                @"Vincent Doe",
                @"Derek Doe",
                @"Kristin Doe",
                @"Dominique Doe",
                @"Liana Doe",
                nil];
   
    //More Info Text
    contactLabel =   [[NSMutableArray alloc]initWithObjects:
                      @"This computer wiz explained how one of the most wanted smart phone features in business is having the ability to have a conference with a group over text messages. It's quick and an effective way to interact with business colleagues, classmates and friends. This also improves deliverable time and minimizes miscommunication. ",
                      @"Computer Wiz",
                      @"Computer Wiz",
                      @"Computer Wiz",
                      @"Computer Wiz",
                      @"Computer Wiz",
                      @"Computer Wiz",
                      @"Computer Wiz",
                      @"Computer Wiz",
                      @"Computer Wiz",
                      @"Computer Wiz",
                      @"Computer Wiz",
                      @"Computer Wiz",
                      @"Computer Wiz",
                      @"Computer Wiz",
                      @"Computer Wiz",
                      @"Computer Wiz",
                      @"Computer Wiz",
                      @"Computer Wiz",
                      @"Computer Wiz",
                   nil];
    
    //Icon Images
    contactImages = [[NSMutableArray alloc]initWithObjects:
                     @"James.png",
                     @"Amanda.png",
                     @"Jasmine.png",
                     @"Justin.png",
                     @"Aaron.png",
                     @"Mike.png",
                     @"Joe.png",
                     @"Karen.png",
                     @"Jeff.png",
                     @"Michael.png",
                     @"Brian.png",
                     @"Ashley.png",
                     @"Ryan.png",
                     @"Maria.png",
                     @"Emily.png",
                     @"Vincent.png",
                     @"Derek.png",
                     @"Kristin.png",
                     @"Dominique.png",
                     @"Liana.png"
                     , nil];
    
    webLinks = [[NSMutableArray alloc]initWithObjects:
                @"Start-Ups Are in a Rush to Bring the Chat Room to Smartphone web.ebscohost.com",
                @"google.com",
                @"google.com",
                @"google.com",
                @"google.com",
                @"google.com",
                @"google.com",
                @"google.com",
                @"google.com",
                @"google.com",
                @"google.com",
                @"google.com",
                @"google.com",
                @"google.com",
                @"google.com",
                @"google.com",
                @"google.com",
                @"google.com",
                @"google.com",
                @"google.com", nil];

    

    
    self.navigationController.navigationBar.tintColor= [UIColor blackColor];
    
    
}


/*---Returns Rows-------------------------------------------------------------------------------------*/

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return contactList.count;
}


/*---Get Item List--------------------------------------------------------------------------------------------*/

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = (NSString*)[contactList objectAtIndex:indexPath.row];
    
    return cell;
}




/*---Display Item List--------------------------------------------------------------------------------------------*/
- (void)tableView:(UITableView *)tableView didHighlightRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSString *contactChoice = [contactList objectAtIndex:[indexPath row]];
    NSString *contactText = [contactLabel objectAtIndex:[indexPath row]];
    NSString *webReference = [webLinks objectAtIndex:[indexPath row]];
    
    NSString *showContact = [[NSString alloc] initWithFormat: @"Contact: \n%@ \n\nExperience: \n%@ \n\nWebsite: \n%@", contactChoice, contactText, webReference];
    
    DetailViewController *myDetailView = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:[NSBundle mainBundle]];
    self.detailView = myDetailView;
    
    // Setup client information for display
    myDetailView.contactName = showContact;
    
    // Pull up my detail view
    [self presentViewController:myDetailView animated:YES completion:nil];
    
}



@end