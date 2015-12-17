//
//  C4QCatDetailViewController.m
//  unit-3-final-assessment
//
//  Created by Michael Kavouras on 12/17/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import "C4QCatDetailViewController.h"
#import <AFNetworking/AFNetworking.h>

@interface C4QCatDetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *catImageView;
@property (weak, nonatomic) IBOutlet UILabel *factLabel;

@end

@implementation C4QCatDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.catImageView.clipsToBounds = YES;
    
    self.factLabel.text = self.catFact;
    [self fetchCatPhoto: ^(UIImage *image) {
        self.catImageView.image = image;
    }];
}

- (void)fetchCatPhoto:(void(^)(UIImage *image))completion {
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] init];
    [manager GET:@"http://api.giphy.com/v1/gifs/search?q=cat&api_key=dc6zaTOxFJmzC" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSArray *data = [responseObject objectForKey:@"data"];
        NSDictionary *result = data[arc4random_uniform(data.count)];
        NSDictionary *images = [result objectForKey:@"images"];
        
        NSString *originalURLString = [[images objectForKey:@"original"] objectForKey:@"url"];
        NSURL *url = [NSURL URLWithString:originalURLString];
        NSData *imageData = [NSData dataWithContentsOfURL:url];
        UIImage *image = [UIImage imageWithData:imageData];
        
        completion(image);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    }];
}

@end
