//
//  C4QSavedCatFactsTableViewController.m
//  unit-3-final-assessment
//
//  Created by Michael Kavouras on 12/17/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import "C4QSavedCatFactsTableViewController.h"

@interface C4QSavedCatFactsTableViewController ()

@end

@implementation C4QSavedCatFactsTableViewController

- (IBAction)doneButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (NSArray *)savedCatFacts {
    if ([[NSUserDefaults standardUserDefaults] valueForKey:@"SavedCatFactsKey"] == nil) {
        return @[];
    }
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"SavedCatFactsKey"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self savedCatFacts].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SavedCatFactIdentifier" forIndexPath:indexPath];
    
    NSString *fact = [self savedCatFacts][indexPath.row];
    cell.textLabel.text = fact;
    
    return cell;
}


@end
