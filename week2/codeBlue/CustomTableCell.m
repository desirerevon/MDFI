//
//  CustomTableCell.m
//  codeBlue
//
//  Created by Desire Gardner on 5/13/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "CustomTableCell.h"


@implementation CustomTableCell

@synthesize contactName;




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
