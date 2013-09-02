//
//  ISJFirstViewController.m
//  InSpaceJobs
//
//  Created by Tiago Daniel Cachulo Carvalho on 8/22/13.
//  Copyright (c) 2013 VisionSpace Technologies. All rights reserved.
//
//  The parser has been implemented from the example provided by: http://www.raywenderlich.com/14172/how-to-parse-html-on-ios

#import "ISJJobsViewController.h"
#import "TFHpple.h"
#import "parserJob.h"


@interface ISJJobsViewController ()
{
    NSArray *JobListTableViewData;
    NSMutableArray *_objects;
    NSMutableArray *_contributors;
}

@end

@implementation ISJJobsViewController

@synthesize JobListTableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
   self.JobListTableView.dataSource=self;
   self.JobListTableView.delegate=self;
    
    [self loadHTMLParser];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
    {
        return [JobListTableViewData count];
    }

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";

    customCell01 *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];

    
    if (cell == nil) {
        cell = [[customCell01 alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    parserJob *jobs = [_objects objectAtIndex:indexPath.row];
    cell.cellJobTitle.text = jobs.jobTitle;
    cell.cellJobEmployee.text = @"VisionSpace Technologies";
    cell.cellJobLocation.text = @"Darmstadt (Germany)";
    cell.cellThumbEmployee.image = [UIImage imageNamed:@"logo_company_42x42.png"];

    return cell;
}

// Alternate the color of the cells in tableView
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row%2 == 0) {
        
        UIColor *altCellColor = [UIColor colorWithWhite:0.7 alpha:0.2];
        
        cell.backgroundColor = altCellColor;
        
    }
    
}

-(void)loadHTMLParser {
    // 1
    NSURL *parserJobsUrl = [NSURL URLWithString:@"http://www.space-careers.com/alljobs.html"];
    NSData *parserJobsHtmlData = [NSData dataWithContentsOfURL:parserJobsUrl];
    
    // 2
    TFHpple *parserJobsParser = [TFHpple hppleWithHTMLData:parserJobsHtmlData];
    
    // 3
    NSString *parserJobsXpathQueryString = @"//div[@class='lastJobsJob']/a";
    NSArray *parserJobsNodes = [parserJobsParser searchWithXPathQuery:parserJobsXpathQueryString];
    
    // 4
    NSMutableArray *newparserJob = [[NSMutableArray alloc] initWithCapacity:0];
    for (TFHppleElement *element in parserJobsNodes) {
        // 5
        parserJob *parserJobE = [[parserJob alloc] init];
        [newparserJob addObject:parserJobE];
        
        // 6 
        parserJobE.jobTitle = [[element firstChild] content];
        parserJobE.jobEmployee = [[element parent] content];
        parserJobE.jobLocation = [[element firstChild] content];
        
        // 7
        parserJobE.jobUrl = [element objectForKey:@"href"];
        
        
    }
    
    // 8
    _objects = newparserJob;
    [self.JobListTableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
