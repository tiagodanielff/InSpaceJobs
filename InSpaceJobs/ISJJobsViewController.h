//  ISJFirstViewController.h
//  InSpaceJobs
//
//  Created by Tiago Daniel Cachulo Carvalho on 8/22/13.
//  Copyright (c) 2013 VisionSpace Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "customCell01.h"



@interface ISJJobsViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *JobListTableView;



@end
