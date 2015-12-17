//
//  C4QColorPickerViewController.m
//  unit-3-final-assessment
//
//  Created by Michael Kavouras on 12/17/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import "C4QColorPickerViewController.h"

@interface C4QColorPickerViewController ()

@end

@implementation C4QColorPickerViewController

- (IBAction)redButtonTapped:(id)sender {
    [self colorSelected:[UIColor redColor]];
}

- (IBAction)greenButtonTapped:(id)sender {
    [self colorSelected:[UIColor greenColor]];
}

- (IBAction)blueButtonTapped:(id)sender {
    [self colorSelected:[UIColor blueColor]];
}

- (void)colorSelected:(UIColor *)color {
    if (self.delegate) {
        [self.delegate colorPickerViewController:self didPickColor:color];
        [self.navigationController popViewControllerAnimated:YES];
    }
}

@end
