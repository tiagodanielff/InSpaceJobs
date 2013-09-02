//
//  customCell01.m
//  InSpaceJobs
//
//  Created by Tiago Daniel Cachulo Carvalho on 9/2/13.
//  Copyright (c) 2013 VisionSpace Technologies. All rights reserved.
//

#import "customCell01.h"

@implementation customCell01

@synthesize cellJobTitle;
@synthesize cellJobEmployee;
@synthesize cellJobLocation;
@synthesize cellThumbEmployee;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"customCell01" owner:self options:nil];
        self = [nibArray objectAtIndex:0];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
