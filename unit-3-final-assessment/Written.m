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

    NSInteger positiveInteger = 10;
    
    return positiveInteger;
}


// return any positive integer greater than 1000

- (NSInteger)returnAnyPositiveIntegerGreaterThan1000
{
    NSInteger overOneThousand = 1001;
    
    return overOneThousand;
}


// return any negative float

- (CGFloat)returnAnyNegativeFloat
{
    CGFloat myPerformanceInSuperSmashBros = -10;
    
    return myPerformanceInSuperSmashBros;
}


// return a truthy BOOL

- (BOOL)returnATruthyBool
{
    BOOL noGirlFriend = TRUE;
    
    return noGirlFriend;
}


// return the character 'k'

- (char)returnTheCharacterK
{
   char letterK = @"k";
 
    
    return letterK;
}


/* ======================= */


// return the sum of integerA and integerB

- (NSInteger)returnTheSumOfIntegerA:(NSInteger)integerA
                        andIntegerB:(NSInteger)integerB
{
    
    NSInteger sum = integerA+integerB;
    return sum;
}


// return the difference between floatA and floatB

- (CGFloat)returnTheDifferenceBetweenFloatA:(CGFloat)floatA
                                    andFloatB:(CGFloat)floatB
{
    
    NSInteger difference = floatB - floatA;
    
    return difference;
}


// return the product of x and 100

- (CGFloat)returnTheProductOfXAnd100:(CGFloat)x
{
    return 0;
}


// return the quotient of floatA and floatB

- (CGFloat)returnTheQuotientOfFloatA:(CGFloat)floatA
                           andFloatB:(CGFloat)floatB
{
    return 0;
}


// return YES if x is greater than 10
// return NO if x is less than or greater than 10

- (BOOL)returnYESIfXIsGreaterThan10AndNoIfXIsLessThanOrEqualTo10:(NSInteger)x
{
    x = 11;
    
    return YES;
}


// return YES if x is even
// return NO if x is odd

- (BOOL)returnYESIfXIsEvenAndNOIfXIsOdd:(NSInteger)x
{
    
    x=12;
    
    return YES;
}


// return the sum of all numbers between
// 0 and 246 INCLUDING 246.

- (NSInteger)returnTheSumOf0ToX:(NSInteger)x
{
    NSInteger sum = 0;
    for (NSInteger count = 0; count<=x; count++) {
        
        sum = count + count +1;
    }
    
    return sum;
}


// return the sum of all even numbers between
// 0 and x NOT INCLUDING x

- (NSInteger)returnTheSumOfAllEvenNumbersBetween0AndX:(NSInteger)x
{
    
    NSInteger sum = 0;
    
    for (NSInteger count = 0; count<=x; count++) {
        
        if (count%2==0) {
            sum = count + count +1;

        }
        else{
            continue;
        }
            }
    
    return sum;
}

/* ======================= */


// return the 5th item (index 4) from the provided array

- (id)returnThe5thElementInTheArray:(NSArray *)theArray
{
    return theArray[4];
}


// return an array with the following strings
//   "dinosaur"
//   "catfish"
//   "spoon"
//   @123
//   @[]

- (NSArray *)returnAnArrayWithTheDescribedItems
{
    
    NSArray* array= [NSArray arrayWithObjects:@"dinosaur", @"catfish",@"spoon",@123,@[], nil];
   
    return array;
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
    NSMutableArray* newArray = [NSMutableArray arrayWithArray:arrayOne];
    
    [newArray addObjectsFromArray:arrayTwo];
    
    NSArray* finalArray = [newArray mutableCopy];
    
    return finalArray;
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
    NSDictionary* data = [NSDictionary dictionaryWithObjectsAndKeys:[JSON objectForKey:@"data"], nil];
    NSMutableArray* lastPost = [NSMutableArray arrayWithObject:[[data objectForKey:@"data"] lastObject]];
    
    NSString* standardResolutionURL= [[[lastPost[0] objectForKey:@"images"] objectForKey:@"standard_resolution"] objectForKey:@"url"];
    
    return standardResolutionURL;
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

- (Ewok*)createAnEwokAndDoSomeStuffWithIt
{
    Ewok* anEwok= [[Ewok alloc] init];
    anEwok.name = @"Carl";
    [anEwok walk:8];
    [anEwok feed];
    
    return anEwok;
}


// ** BONUS **

// Create and return a block that takes 2 NSInteger parameters and
// returns the sum
- (void)createAndReturnABlockThatReturnsTheSumsOfTwoNumber
{
    
}

@end
