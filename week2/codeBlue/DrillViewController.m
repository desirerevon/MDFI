//
//  DrillViewController.m
//  codeBlue
//
//  Created by Desire Gardner on 5/15/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "DrillViewController.h"
#import "ChatViewController.h"

@interface DrillViewController ()
{
    NSMutableArray *totalData; //set of strings
    NSMutableArray *filteredData;//when user types in search bar the strings will filter
    BOOL isFiltered;// YES if text is in search bar
    
    
    
}

@end

@implementation DrillViewController

@synthesize mySearchBar;
@synthesize myTableView;

/* working together for search bar----------------------------------------------------------------------------------------*/
- (void)viewDidLoad
{
    self.title= @"Recent Chats";

    [super viewDidLoad];
    
    
    self.mySearchBar.delegate = self;
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    
    
    //total array data
    totalData = [[NSMutableArray alloc]init];
    [totalData addObject: @"Derek"];
    [totalData addObject: @"Dominique"];
    [totalData addObject: @"Emily"];
    [totalData addObject: @"Jasmine"];
    [totalData addObject: @"James"];
    [totalData addObject: @"Amanda"];
    [totalData addObject: @"Justin"];
    [totalData addObject: @"Jeff"];
    [totalData addObject: @"Aaron"];
    [totalData addObject: @"Liana"];
    [self setTitle:@"Chat"];

    

    // Do any additional setup after loading the view from its nib.
}


//method called when user creates an action in search field
-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    if(searchText.length == 0)
    {
        isFiltered = NO;
    }
    else
    {
        isFiltered = YES;
        filteredData = [[NSMutableArray alloc]init]; //initalize strings
        
        for (NSString *str in totalData)
        {
            NSRange dataRange = [str rangeOfString:searchText options:NSCaseInsensitiveSearch]; //search by letters not case
            
            if (dataRange.location != NSNotFound) {
                [filteredData addObject:str]; //if it is in range it will add object
            }
        }
    }
    [self.myTableView reloadData];
    
}



//returns the amount of sections
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}




//number of rows
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(isFiltered)
    {
        return [filteredData count]; //not filtered so return strings
        
    }
    return[totalData count];
}


-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *theCell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(!theCell)
    {
        theCell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
        if(!isFiltered)
        {
            theCell.textLabel.text = [totalData objectAtIndex:indexPath.row]; //if not filtered
        }
        else //if it is filtered
        {
            theCell.textLabel.text = [filteredData objectAtIndex:indexPath.row];
        }
        return theCell;
    
}


-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    [self.myTableView resignFirstResponder];
}

/* working together for search bar----------------------------------------------------------------------------------------*/


//if row is equaled to str it will return the specific set message cells
-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ChatViewController *chats = [[ChatViewController alloc]initWithNibName:@"ChatViewController" bundle:nil];
    
    if ([[totalData objectAtIndex:indexPath.row] isEqual:@"Derek"])
    {
        chats.contactInt = 0;
        [chats setTitle:[totalData objectAtIndex: indexPath.row]];
    }
    
    if ([[totalData objectAtIndex:indexPath.row] isEqual:@"Dominique"])
    {
        chats.contactInt = 1;
        [chats setTitle:[totalData objectAtIndex: indexPath.row]];
    }
    
    if ([[totalData objectAtIndex:indexPath.row] isEqual:@"Emily"])
    {
        chats.contactInt = 2;
        [chats setTitle:[totalData objectAtIndex: indexPath.row]];
    }
    if ([[totalData objectAtIndex:indexPath.row] isEqual:@"Jasmine"])
    {
        chats.contactInt = 3;
        [chats setTitle:[totalData objectAtIndex: indexPath.row]];
    }

  
    [self.navigationController pushViewController:chats animated:YES];
    [chats release];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)dealloc {
    [mySearchBar release];
    [myTableView release];
    [super dealloc];
}
@end
