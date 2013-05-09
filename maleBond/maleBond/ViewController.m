//
//  ViewController.m
//  maleBond
//
//  Created by Desire Gardner on 5/8/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableCell.h"
#import "DetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Data Arrays
    
    list = [[NSMutableArray alloc] initWithObjects:
            @"Beer Date",
            @"Bowling Madhouse",
            @"Sperry Life",
            @"Hamburger",
            @"Hooters",
            @"Car Mania",
            @"Night Owl",
            @"Im Sorry",
            @"Winning",
            @"AGREE!",
            @"The Benz",
            @"My Boys",
            @"TShirt Time",
            @"Working Late",
            @"Wing Stop",
            @"NNO",
            @"Essentially,",
            @"iHOP",
            @"Corduroy Pants",
            @"TRUST!",
            nil];
    
    moreDetails = [[NSMutableArray alloc]initWithObjects:
                      @"Click here for more details",
                      @"Click here for more details",
                      @"Click here for more details",
                      @"Click here for more details",
                      @"Click here for more details",
                      @"Click here for more details",
                      @"Click here for more details",
                      @"Click here for more details",
                      @"Click here for more details",
                      @"Click here for more details",
                      @"Click here for more details",
                      @"Click here for more details",
                      @"Click here for more details",
                      @"Click here for more details",
                      @"Click here for more details",
                      @"Click here for more details",
                      @"Click here for more details",
                      @"Click here for more details",
                      @"Click here for more details",
                      @"Click here for more details",
                      nil];
    
    //Icon Images
   imageDetail= [[NSMutableArray alloc]initWithObjects:
                
                @"beerDate.png",
                @"bowlingMadhouse.png",
                @"sperryLife.png",
                @"hamburger.png",
                @"hooters.png",
                @"carMania.png",
                @"nightOwl.png",
                @"imSorry.png",
                @"winning.png",
                @"agree.png",
                @"theBenz.png",
                @"myBoys.png",
                @"tshirtTime.png",
                @"workingLate.png",
                @"wingStop.png",
                @"NNO.png",
                @"essentially.png",
                @"iHop.png",
                @"corduroyPants.png",
                @"trust.png", nil];
    
    //Detail Text
    text = [[NSMutableArray alloc]initWithObjects:
                        
                        @"Im in desparate need of a beer. Who's coming?",
                        @"I am the master bowler and I master bowling.",
                        @"Sperry's are for men too! DO SPERRY'S.",
                        @"It's ok that my hamburger came on a platter, my wife can't cook, but she makes fast food look nice.",
                        @"The fried pickels are off the chain.",
                        @"I woke up in a new bugatti and then I really woke up.",
                        @"So there is this invention I had.. a Spork, it's a spoon and a fork. Nobody has it..",
                        @"There is a way to apologize and it starts with a smile.",
                        @"All I do is WIN no matter what, yes I have Adonis blood.",
                        @"If she is mad at someone so are you. Happy wife, happy life. Never disagree.",
                        @"It's not a bugatti, but it's my bugatti.",
                        @"The men that are important in my life #priority numero uno.",
                        @"T-shirt Time, enough said.",
                        @"Don't say Im working late.. say when I get home at 11 I want to bring you takout and take you shopping in the morning. ",
                        @"Wingstop is a must and I should have it in my belly immediately...this is serious.",
                        @"Ninja Night Out. Guys night out is a must and it involves pretending to be single.",
                        @"When you are at work use the word essentially a few times and you will be admired. Use your words.",
                        @"After a late night working hard on the dancefloor, this is the final destination.",
                        @"JUST DONT WEAR THEM.",
                        @"Trust that I will always say to trust me, but Trust No One, except your mom.", nil];
    
    
    
    
    
    
    
    
      

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*---Returns Rows-------------------------------------------------------------------------------------*/

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [list count];
}


/*---Edit List Item--------------------------------------------------------------------------------------*/

-(IBAction)onEdit:(id)sender
{
    if(editButton.tag == 0)
    {
        //Done
        [mbTableView setEditing:TRUE];
        [editButton setTitle:@"Done" forState:0];
        editButton.tag = 1;
    }
    else
    {
        //Edit
        [mbTableView setEditing:FALSE];
        [editButton setTitle:@"Edit" forState:0];
        editButton.tag = 0;}

}


/*---Delete List Item--------------------------------------------------------------------------------------*/


- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}

-(void)tableView:(UITableView*)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath

{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        [list removeObjectAtIndex:indexPath.row];
        [mbTableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath]withRowAnimation:true];
    }
}

/*---Get Item List--------------------------------------------------------------------------------------------*/

-(UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    CustomTableCell *mCell =[mbTableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (mCell == nil)
    {
        NSArray *views = [[NSBundle mainBundle]loadNibNamed:@"CustomTableViewCell" owner:nil options:nil];
        for(UIView *view in views)
        {
            if([view isKindOfClass:[CustomTableCell class]])
            {
                mCell = (CustomTableCell*)view;
                mCell.itemName.text = [list objectAtIndex:indexPath.row];
                mCell.itemLabel.text =[moreDetails objectAtIndex:indexPath.row];
                mCell.imageView.image = [UIImage imageNamed:[imageDetail objectAtIndex:indexPath.row]];

            }
        }
    }
    return mCell;
}

/*---Display Item List--------------------------------------------------------------------------------------------*/


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  DetailViewController *viewDetail =[[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    
    if (viewDetail != nil)
    
    {
        [self presentViewController:viewDetail animated:true completion:nil];
        
        viewDetail.moreDetailText.text =[list objectAtIndex:indexPath.row];
        viewDetail.imageD.image = [UIImage imageNamed:[imageDetail objectAtIndex:indexPath.row]];
        viewDetail.textForDetails.text = [text objectAtIndex: indexPath.row];
       

        
    }
    
}

@end
    