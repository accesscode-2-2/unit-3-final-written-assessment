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

- (NSInteger)returnAnyPositiveInteger
{
    return 3;
}


// return any positive integer greater than 1000

- (NSInteger)returnAnyPositiveIntegerGreaterThan1000
{
    return 1001;
}


// return any negative float

- (CGFloat)returnAnyNegativeFloat
{
    return -0.01;
}


// return a truthy BOOL

- (BOOL)returnATruthyBool
{
    return YES;
}





// return the character 'k'

- (char)returnTheCharacterK
{

    return 'k';
}




/* ======================= */


// return the sum of integerA and integerB

- (NSInteger)returnTheSumOfIntegerA:(NSInteger)integerA
                        andIntegerB:(NSInteger)integerB
{
    return integerA + integerB;
}


// return the difference between floatA and floatB

- (CGFloat)returnTheDifferenceBetweenFloatA:(CGFloat)floatA
                                    andFloatB:(CGFloat)floatB
{
    return floatA - floatB;
}


// return the product of x and 100

- (CGFloat)returnTheProductOfXAnd100:(CGFloat)x
{
    return 100 * x;
}


// return the quotient of floatA and floatB

- (CGFloat)returnTheQuotientOfFloatA:(CGFloat)floatA
                           andFloatB:(CGFloat)floatB
{
    return floatA/floatB;
}


// return YES if x is greater than 10
// return NO if x is less than or greater than 10

- (BOOL)returnYESIfXIsGreaterThan10AndNoIfXIsLessThanOrEqualTo10:(NSInteger)x

{
    if (x > 10) {
        return YES;
    } else {
        return NO;
    }
}



// return YES if x is even
// return NO if x is odd

- (BOOL)returnYESIfXIsEvenAndNOIfXIsOdd:(NSInteger)x
{
    if (x % 2) {
        return NO;
    } else {
        return YES;
    }
}

//
//// return the sum of all numbers between
//// 0 and x INCLUDING x.
//
- (NSInteger)returnTheSumOf0ToX:(NSInteger)x
{

    NSInteger sum = 0;
    
    for (int i = 0; i <= x; i++) {
        
        sum = sum + i;
    }
    
    return sum;
}





////
//// return the sum of all even numbers between
//// 0 and x NOT INCLUDING x
//


- (NSInteger)returnTheSumOfAllEvenNumbersBetween0AndX:(NSInteger)x
{
    
    
    NSInteger sum = 0;
    
    for (int i = 0; i < x; i++) {
        if (i % 2 == 0) {
            sum += i;
        }
    }
    
    return sum;
    
    
}



// =======================


// return the 5th item (index 4) from the provided array

- (id)returnThe5thElementInTheArray:(NSArray *)theArray
{
    return [theArray objectAtIndex:4];
}




// return an array with the following strings
//   "dinosaur"
//   "catfish"
//   "spoon"
//   @123
//   @[]

- (NSArray *)returnAnArrayWithTheDescribedItems
{
    return @[@"dinosaur", @"catfish",  @"spoon", @123, @[]];
}


// insert the string "balloon" to the provided array
// at index 2

- (void)addBalloonAtIndexTwo:(NSMutableArray *)array
{
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
             withArrayTwo:(NSArray *)arrayTwo
{
    NSMutableArray *arrayThree = [[NSMutableArray alloc] init];
    
    [arrayThree addObjectsFromArray:arrayOne];
    [arrayThree addObjectsFromArray:arrayTwo];
    
    return arrayThree;
    
}


// Given a dictionary, return the object for the key "mountain"

- (id)returnTheObjectForTheKeyMountain:(NSDictionary *)dictionary
{
    
    return [dictionary objectForKey:@"mountain"];
    
}

    
    
    

// Using the provided JSON, parse and return the 'last standard resolution image url'
//
// refer to this url for json structure
// https://api.instagram.com/v1/tags/nofilter/media/recent?client_id=ac0ee52ebb154199bfabfb15b498c067



- (NSString *)returnTheLastStandardResolutionImageURL:(NSDictionary *)JSON

{

        NSArray *posts = [JSON objectForKey:@"data"];

        NSDictionary *lastPost = [posts lastObject];

        NSString *urlString = lastPost[@"images"][@"standard_resolution"][@"url"];

        return urlString;


}





// Perform the following manipulations to the provided dictionary
//  • Remove the object for the key "carpet"
//  • Add the string @"rainy" for the key "weather"

- (void)manipulateTheDictionary:(NSMutableDictionary *)aDictionary
{
    [aDictionary removeObjectForKey:@"carpet"];
    [aDictionary setObject:@"rainy" forKey:@"weather"];
}




// Provided a block as a parameter, simply execute the block

- (void)executeTheProvidedBlock:(void (^)())completion
{
    completion();
}


// Tell the ewok to walk 10 steps

- (void)walkTheEwok:(Ewok *)ewok
{
    
    [ewok walk:10];
    
}


// Follow the steps
//   * Create an instance of Ewok
//   * Name it "Carl"
//   * Tell it to walk 8 steps
//   * Feed it
//   * Return it

- (Ewok *)createAnEwokAndDoSomeStuffWithIt
{
    
    
    Ewok *carlTheEwok = [[Ewok alloc] init];
    
    [carlTheEwok setName:@"Carl"];
    [carlTheEwok walk:8];
    [carlTheEwok feed];

    return carlTheEwok;
}


// ** BONUS **

// Create and return a block that takes 2 NSInteger parameters and
// returns the sum
- (void)createAndReturnABlockThatReturnsTheSumsOfTwoNumber
{
    
}

@end
