//
//  C4QCatFactTableViewCell.m
//  unit-3-final-assessment
//
//  Created by Michael Kavouras on 12/17/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import "C4QCatFactTableViewCell.h"

@implementation C4QCatFactTableViewCell


- (IBAction)addFactButtonTapped:(id)sender {
    NSMutableArray *facts;
    if ([[NSUserDefaults standardUserDefaults] valueForKey:@"SavedCatFactsKey"]) {
        facts = [[[NSUserDefaults standardUserDefaults] objectForKey:@"SavedCatFactsKey"] mutableCopy];
    } else {
        facts = [[NSMutableArray alloc] init];
    }
    
    [facts addObject:self.factLabel.text];
    
    [[NSUserDefaults standardUserDefaults] setObject:facts forKey:@"SavedCatFactsKey"];
}

@end
