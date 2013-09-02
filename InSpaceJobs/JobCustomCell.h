//
//  JobCell.h
//  InSpaceJobs
//
//  Created by Tiago Daniel Cachulo Carvalho on 8/23/13.
//  Copyright (c) 2013 VisionSpace Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JobCustomCell : UITableViewController

@property (weak, nonatomic) IBOutlet UIImageView *jobImage;

@property (weak, nonatomic) IBOutlet UILabel *jobTitleInCell;

@property (weak, nonatomic) IBOutlet UILabel *jobEmployeeInCell;

@property (weak, nonatomic) IBOutlet UILabel *jobLocationInCell;

@end
