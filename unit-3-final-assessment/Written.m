//
//  Written.m
//  unit-3-final-assessment
//
//  Created by Michael Kavouras on 12/1/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import "Written.h"

@implementation Written


// return any positive integer

- (NSInteger)returnAnyPositiveInteger {
    return 2;
}


// return any positive integer greater than 1000

- (NSInteger)returnAnyPositiveIntegerGreaterThan1000 {
    
    return 1001;
}


// return any negative float

- (CGFloat)returnAnyNegativeFloat {
    return -3.2;
}


// return a truthy BOOL

- (BOOL)returnATruthyBool {
    return YES;
}


// return the character 'k'

- (char)returnTheCharacterK {
    
   return 'k';
}


/* ======================= */


// return the sum of integerA and integerB

- (NSInteger)returnTheSumOfIntegerA:(NSInteger)integerA
                        andIntegerB:(NSInteger)integerB {

    return integerA + integerB;
}


// return the difference between floatA and floatB

- (CGFloat)returnTheDifferenceBetweenFloatA:(CGFloat)floatA
                                    andFloatB:(CGFloat)floatB
{
    return floatA - floatB;
}


// return the product of x and 100

- (CGFloat)returnTheProductOfXAnd100:(CGFloat)x {
    
    return 100 * x;
}


// return the quotient of floatA and floatB

- (CGFloat)returnTheQuotientOfFloatA:(CGFloat)floatA
                           andFloatB:(CGFloat)floatB {
    return floatA/floatB;
}


// return YES if x is greater than 10
// return NO if x is less than or equal to 10

- (BOOL)returnYESIfXIsGreaterThan10AndNoIfXIsLessThanOrEqualTo10:(NSInteger)x {
    
    if (x <= 10) {
        return NO;
    }
    return YES;
}


// return YES if x is even
// return NO if x is odd

- (BOOL)returnYESIfXIsEvenAndNOIfXIsOdd:(NSInteger)x {
    
    if (x %2 == 0) {
        return YES;
    }
    return NO;
    
}


// return the sum of all numbers between
// 0 and 246 INCLUDING 246.

- (NSInteger)returnTheSumOf0ToX:(NSInteger)x {
   
    NSInteger sum = 0;
    
    for (int i = 0; i <= x; i++) {
        sum = sum + i;
    }
    return sum;
}


// return the sum of all even numbers between
// 0 and x NOT INCLUDING x

- (NSInteger)returnTheSumOfAllEvenNumbersBetween0AndX:(NSInteger)x {
    
    NSInteger sum = 0;
    
    for (int i = 0 ; i < x; i++) {
        if (i %2 == 0 ) {
            sum = sum + i;
        }
    }
    return sum;
}

/* ======================= */


// return the 5th item (index 4) from the provided array

- (id)returnThe5thElementInTheArray:(NSArray *)theArray {
    
    return [theArray objectAtIndex:4];
}


// return an array with the following strings
//   "dinosaur"
//   "catfish"
//   "spoon"
//   @123
//   @[]

- (NSArray *)returnAnArrayWithTheDescribedItems {
    
    NSArray *anArray = @[@"dinosaur", @"catfish", @"spoon", @123, @[]];
    
    return anArray;
}


// insert the string "balloon" to the provided array
// at index 2

- (void)addBalloonAtIndexTwo:(NSMutableArray *)array {
    
    [array insertObject:@"balloon" atIndex:2];
}


// Give two arrays, return a new array that is the
// result of joining arrayOne with arrayTwo
//
// example.
//   arrayOne = [@1, @2, @3];
//   arrayTwo = [@4, @5, @6];
//
//   You would return the following array:
//   [@1, @2, @3, @4, @5, @6];

- (NSArray *)joinArrayOne:(NSArray *)arrayOne
             withArrayTwo:(NSArray *)arrayTwo {
    
    NSArray* newArray = [arrayOne arrayByAddingObjectsFromArray:arrayTwo];
    
    return newArray;
}


// Given a dictionary, return the object for the key "mountain"

- (id)returnTheObjectForTheKeyMountain:(NSDictionary *)dictionary {
   
    NSObject *object = [dictionary objectForKey:@"mountain"];

    return object ;
}


// Using the provided JSON, parse and return the 'last standard resolution image url'
//
// refer to this url for json structure
// https://api.instagram.com/v1/tags/nofilter/media/recent?client_id=ac0ee52ebb154199bfabfb15b498c067

- (NSString *)returnTheLastStandardResolutionImageURL:(NSDictionary *)JSON {
    
    
    NSArray *imageArray = [[NSArray alloc] init];
    
    NSString *imageString = JSON[@"data"][@"images"][@"standard_resolution"];
    
    [imageArray arrayByAddingObject:imageString];
    
    return [imageArray lastObject];
}


// Perform the following manipulations to the provided dictionary
//  • Remove the object for the key "carpet"
//  • Add the string @"rainy" for the key "weather"

- (void)manipulateTheDictionary:(NSMutableDictionary *)aDictionary {
    
    [aDictionary removeObjectForKey:@"carpet"];
    [aDictionary setObject:@"rainy" forKey:@"weather"];
}


// Provided a block as a parameter, simply execute the block

- (void)executeTheProvidedBlock:(void (^)())completion {

    completion();
}


// Tell the ewok to walk 10 steps

- (void)walkTheEwok:(Ewok *)ewok {
    
    [ewok walk:10];
    
}


// Follow the steps
//   * Create an instance of Ewok
//   * Name it "Carl"
//   * Tell it to walk 8 steps
//   * Feed it
//   * Return it

- (Ewok *)createAnEwokAndDoSomeStuffWithIt {
    Ewok *eWok = [[Ewok alloc] init];
    eWok.name = @"Carl";
    [eWok walk:8];
    [eWok feed];
    
    return eWok;
}


// ** BONUS **

// Create and return a block that takes 2 NSInteger parameters and
// returns the sum


- (void)createAndReturnABlockThatReturnsTheSumsOfTwoNumber {

    
}

//-(NSArray *)createAndReturnABlockThatSumsTwoNumber:(NSInteger(^)(numberOne, NSInteger numberTwo, BOOL *stop))comparator{
//
//}

//- (NSInteger)createAndReturnABlockThatSumsTwoNumber(NSInteger numberOne, NSInteger numberTwo) {
//
//}

//- (NSInteger)createAndReturnABlockThatSumsTwoNumber:(^myFunction)(int, int) = ^(int parameterOne, int parameterTwo) {
//    // do something here
//    return anInt;
//}

- (NSInteger)createAndReturnABlockThatSumsTwoNumber:(NSInteger numberOne, NSInteger numberTwo (^)(NSInteger))blockSum {

    return blockSum();
}


@end
