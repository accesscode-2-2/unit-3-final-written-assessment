//
//  unit_3_final_assessmentTests.m
//  unit-3-final-assessmentTests
//
//  Created by Michael Kavouras on 11/30/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Written.h"

@interface unit_3_final_assessmentTests : XCTestCase

@property (nonatomic) Written *written;

@end

@implementation unit_3_final_assessmentTests

- (void)setUp {
    [super setUp];
    
    self.written = [[Written alloc] init];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testReturnAnyPositiveInteger
{
    XCTAssertTrue([self.written returnAnyPositiveInteger] > 0);
}

- (void)testReturnAnyPositiveIntegerGreaterThan1000
{
    XCTAssertTrue([self.written returnAnyPositiveIntegerGreaterThan1000] > 1000);
}

- (void)testReturnAnyNegativeFloat
{
    XCTAssertTrue([self.written returnAnyNegativeFloat] < 0);
}

- (void)testReturnATruthyBool
{
    XCTAssertTrue([self.written returnATruthyBool] == YES);
}

- (void)testReturnTheCharacterK
{
    XCTAssertTrue([self.written returnTheCharacterK] == 'k');
}

- (void)testReturnTheSumOfTwoNumbers
{
    XCTAssertTrue([self.written returnTheSumOfIntegerA:10 andIntegerB:2] == 12);
    XCTAssertTrue([self.written returnTheSumOfIntegerA:1 andIntegerB:2] == 3);
}

- (void)testReturnTheDifferenceBetweenTwoNumbers
{
    XCTAssertTrue([self.written returnTheDifferenceBetweenFloatA:10 andFloatB:2] == 8);
    XCTAssertTrue([self.written returnTheDifferenceBetweenFloatA:6 andFloatB:2] == 4);
}

- (void)testReturnTheProductOfXAnd100
{
    XCTAssertTrue([self.written returnTheProductOfXAnd100:2] == 200.0);
    XCTAssertTrue([self.written returnTheProductOfXAnd100:3] == 300.0);
}

- (void)testReturnTheQuotientOfTwoNumbers
{
    XCTAssertTrue([self.written returnTheQuotientOfFloatA:10 andFloatB:5] == 2.0);
    XCTAssertTrue([self.written returnTheQuotientOfFloatA:8 andFloatB:2] == 4.0);
}

- (void)testReturnYESIfXIsGreaterThan10AndNoIfXIsLessThanOrEqualTo10
{
    XCTAssertTrue([self.written returnYESIfXIsGreaterThan10AndNoIfXIsLessThanOrEqualTo10:11]);
    XCTAssertFalse([self.written returnYESIfXIsGreaterThan10AndNoIfXIsLessThanOrEqualTo10:10]);
}

- (void)testReturnYESIfXIsEvenAndNOIfXIsOdd
{
    XCTAssertTrue([self.written returnYESIfXIsEvenAndNOIfXIsOdd:10]);
    XCTAssertFalse([self.written returnYESIfXIsEvenAndNOIfXIsOdd:11]);
}

- (void)testReturnTheSumOf0To246
{
    XCTAssertTrue([self.written returnTheSumOf0ToX:246] == 30381);
    XCTAssertTrue([self.written returnTheSumOf0ToX:82] == 3403);
}

- (void)testReturnTheSumOfAllEvenNumbersBetween0And1000
{
    NSInteger first = [self.written returnTheSumOfAllEvenNumbersBetween0AndX:345];
    NSInteger second = [self.written returnTheSumOfAllEvenNumbersBetween0AndX:1039];
    
    XCTAssertTrue(first == 29756);
    XCTAssertTrue(second == 269880);
}

- (void)testReturnThe5thElementInTheArray
{
    NSArray *arr = @[@"a", @"b", @"c", @"d", @"e", @"f"];
    NSArray *arr2 = @[@"1", @"2", @"3", @"4", @"5", @"6"];
    
    XCTAssertTrue([[self.written returnThe5thElementInTheArray:arr] isEqualToString:@"e"]);
    XCTAssertTrue([[self.written returnThe5thElementInTheArray:arr2] isEqualToString:@"5"]);
}

- (void)testReturnAnArrayWithTheDescribedItems
{
    NSArray *result = [self.written returnAnArrayWithTheDescribedItems];
    NSArray *test = @[@"dinosaur", @"catfish", @"spoon", @123, @[]];
    XCTAssertTrue([result isEqual:test]);
}

- (void)testAddBalloonAtIndexTwo
{
    NSMutableArray *arr1 = [[NSMutableArray alloc] initWithArray:@[@"pig", @"cat", @"sheep", @"cobra"]];
    [self.written addBalloonAtIndexTwo:arr1];
    
    NSMutableArray *arr2 = [[NSMutableArray alloc] initWithArray:@[@"blue", @"green", @"yellow", @"red"]];
    [self.written addBalloonAtIndexTwo:arr2];
    
    XCTAssertTrue([[arr1 objectAtIndex:2] isEqualToString:@"balloon"]);
    XCTAssertTrue([[arr2 objectAtIndex:2] isEqualToString:@"balloon"]);
}

- (void)testJoinTwoArrays
{
    NSArray *arr1 = @[@"one", @"two", @"three"];
    NSArray *arr2 = @[@"four", @"five", @"six"];
    
    NSArray *join1 = [self.written joinArrayOne:arr1 withArrayTwo:arr2];
    
    NSArray *test1 = @[@"one", @"two", @"three", @"four", @"five", @"six"];
    
    XCTAssertTrue([join1 isEqual:test1]);
    
    NSArray *arr3 = @[@8, @9, @10];
    NSArray *arr4 = @[@11, @12, @13];
    
    NSArray *join2 = [self.written joinArrayOne:arr3 withArrayTwo:arr4];
    
    NSArray *test2 = @[@8, @9, @10, @11, @12, @13];
    
    XCTAssertTrue([join2 isEqual:test2]);
}

- (void)testReturnTheLastStandardResultionImageURL
{
    XCTestExpectation *expectation = [self expectationWithDescription:@"High Expectation"];
    
    NSURL *url = [NSURL URLWithString:@"https://api.instagram.com/v1/tags/nofilter/media/recent?client_id=ac0ee52ebb154199bfabfb15b498c067"];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *task = [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error == nil) {
            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            
            NSString *result = [[[[json[@"data"] lastObject] objectForKey:@"images"] objectForKey:@"standard_resolution"] objectForKey:@"url"];
            XCTAssertTrue([[self.written returnTheLastStandardResultionImageURL:json] isEqualToString:result]);
            
            [expectation fulfill];
        } else {
            NSLog(@"%@", error);
        }
    }];
    
    [task resume];
    
    [self waitForExpectationsWithTimeout:5.0 handler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.userInfo);
        }
    }];
}

- (void)testManipulateTheDictionary
{
    NSMutableDictionary *dict1 = [NSMutableDictionary dictionaryWithDictionary:@{@"carpet" : @"shag", @"people" : @"many"}];
    NSMutableDictionary *dict2 = [NSMutableDictionary dictionaryWithDictionary:@{@"carpet" : @"yellow", @"farm" : @"max"}];
    
    [self.written manipulateTheDictionary:dict1];
    [self.written manipulateTheDictionary:dict2];
    
    XCTAssertNil(dict1[@"carpet"]);
    XCTAssertNil(dict2[@"carpet"]);
    
    XCTAssertTrue([dict1[@"weather"] isEqualToString:@"rainy"]);
    XCTAssertTrue([dict2[@"weather"] isEqualToString:@"rainy"]);
}


@end
