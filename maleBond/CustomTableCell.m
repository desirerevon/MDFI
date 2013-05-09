//
//  CustomTableCell.m
//  maleBond
//
//  Created by Desire Gardner on 5/8/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "CustomTableCell.h"

@implementation CustomTableCell

@synthesize itemName;
@synthesize itemLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
