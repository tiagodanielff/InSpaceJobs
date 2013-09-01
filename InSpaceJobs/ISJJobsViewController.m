//
//  ISJFirstViewController.m
//  InSpaceJobs
//
//  Created by Tiago Daniel Cachulo Carvalho on 8/22/13.
//  Copyright (c) 2013 VisionSpace Technologies. All rights reserved.
//

#import "ISJJobsViewController.h"

@interface ISJJobsViewController ()
{
    NSArray *JobListTableViewData;
}

@end

@implementation ISJJobsViewController

@synthesize JobListTableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.JobListTableView.dataSource=self;
    self.JobListTableView.delegate=self;
    
    JobListTableViewData = [NSArray arrayWithObjects:@"AOCS Engineer", @"MCS Developer", @"Simulations Officer", @"Operations Manager", @"Flight Dynamics Engineer", @"Propulsion Systems Engineer", @"Configuration Control Support Engineer", @"Data Systems Engineer", @"Spacecraft Operations Manager", @"Ground Operations Manager", @"Spacecraft Database Engineer", @"Financial Administrator", @"Contract Manager", @"Markteer", @"Systems Engineer", @"EGSE Engineer", nil];

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [JobListTableViewData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [JobListTableViewData objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"Logovertical.png"];
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
