//
//  ViewController.m
//  unit-3-final-assessment
//
//  Created by Michael Kavouras on 11/30/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import "C4QViewController.h"
#import "C4QColorPickerViewController.h"

@interface C4QViewController () <C4QColorPickerDelegate>

@property (weak, nonatomic) IBOutlet UIButton *onwardButton;

@end

@implementation C4QViewController


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.destinationViewController isKindOfClass:[C4QColorPickerViewController class]]) {
        C4QColorPickerViewController *viewController = segue.destinationViewController;
        viewController.delegate = self;
    }
}

- (void)colorPickerViewController:(C4QColorPickerViewController *)viewController didPickColor:(UIColor *)color {
    self.view.backgroundColor = color;
}

@end
