//
//  C4QCatsTableViewController.m
//  unit-3-final-assessment
//
//  Created by Michael Kavouras on 12/17/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import "C4QCatsTableViewController.h"
#import <AFNetworking/AFNetworking.h>
#import "C4QCatFactTableViewCell.h"
#import "C4QCatDetailViewController.h"

#define CAT_API_URL @"http://catfacts-api.appspot.com/api/facts?number=100"

@interface C4QCatsTableViewController ()

@property (nonatomic, strong) NSArray *catFacts;

@end

@implementation C4QCatsTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.catFacts = [[NSArray alloc] init];
    
    self.tableView.estimatedRowHeight = 44.0;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
    [self fetchCatFacts: ^{
        [self.tableView reloadData];
    }];
}

- (void)fetchCatFacts:(void(^)())completion
{
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] init];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager GET:CAT_API_URL parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
        self.catFacts = [json objectForKey:@"facts"];
        completion();
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.catFacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    C4QCatFactTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CatFactIdentifier" forIndexPath:indexPath];
    
    cell.factLabel.text = self.catFacts[indexPath.row];
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[C4QCatDetailViewController class]]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSString *fact = self.catFacts[indexPath.row];
        C4QCatDetailViewController *viewController = segue.destinationViewController;
        viewController.catFact = fact;
    }
}

@end
