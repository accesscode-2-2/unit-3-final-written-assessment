//
//  Ewok.h
//  unit-3-final-assessment
//
//  Created by Michael Kavouras on 12/19/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ewok : NSObject

@property (nonatomic) NSInteger energy;
@property (nonatomic) NSString *name;

- (void)walk:(NSInteger)steps;
- (void)feed;

@end
