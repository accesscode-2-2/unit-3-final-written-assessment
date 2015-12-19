//
//  Ewok.m
//  unit-3-final-assessment
//
//  Created by Michael Kavouras on 12/19/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import "Ewok.h"

@implementation Ewok

- (instancetype)init
{
    if (self = [super init]) {
        self.energy = 100;
        return self;
    }
    return nil;
}

- (void)walk:(NSInteger)steps
{
    self.energy -= steps * 5;
}

- (void)feed
{
    self.energy = MIN(self.energy + 20, 100);
}

@end
