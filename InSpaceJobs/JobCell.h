//
//  JobCell.h
//  InSpaceJobs
//
//  Created by Tiago Daniel Cachulo Carvalho on 8/23/13.
//  Copyright (c) 2013 VisionSpace Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JobCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *jobTitle;
@property (weak, nonatomic) IBOutlet UILabel *jobDescription;
@property (weak, nonatomic) IBOutlet UIImageView *jobEmployeeImg;

@end
