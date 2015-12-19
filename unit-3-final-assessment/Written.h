//
//  Written.h
//  unit-3-final-assessment
//
//  Created by Michael Kavouras on 12/1/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Ewok.h"

@interface Written : NSObject

- (NSInteger)returnAnyPositiveInteger;

- (NSInteger)returnAnyPositiveIntegerGreaterThan1000;

- (CGFloat)returnAnyNegativeFloat;

- (BOOL)returnATruthyBool;

- (char)returnTheCharacterK;

- (NSInteger)returnTheSumOfIntegerA:(NSInteger)integerA
                        andIntegerB:(NSInteger)integerB;

- (CGFloat)returnTheDifferenceBetweenFloatA:(CGFloat)floatA
                                  andFloatB:(CGFloat)floatB;

- (CGFloat)returnTheProductOfXAnd100:(CGFloat)x;

- (CGFloat)returnTheQuotientOfFloatA:(CGFloat)floatA
                           andFloatB:(CGFloat)floatB;

- (BOOL)returnYESIfXIsGreaterThan10AndNoIfXIsLessThanOrEqualTo10:(NSInteger)x;

- (BOOL)returnYESIfXIsEvenAndNOIfXIsOdd:(NSInteger)x;

- (NSInteger)returnTheSumOf0ToX:(NSInteger)x;

- (NSInteger)returnTheSumOfAllEvenNumbersBetween0AndX:(NSInteger)x;

- (id)returnThe5thElementInTheArray:(NSArray *)theArray;

- (NSArray *)returnAnArrayWithTheDescribedItems;

- (void)addBalloonAtIndexTwo:(NSMutableArray *)array;

- (NSArray *)joinArrayOne:(NSArray *)arrayOne
             withArrayTwo:(NSArray *)arrayTwo;

- (NSString *)returnTheLastStandardResolutionImageURL:(NSDictionary *)JSON;

- (void)manipulateTheDictionary:(NSMutableDictionary *)aDictionary;

- (void)executeTheProvidedBlock:(void(^)())completion;

- (void)walkTheEwok:(Ewok *)ewok;

- (Ewok *)createAnEwokAndDoSomeStuffWithIt;

- (NSInteger(^)(NSInteger a, NSInteger b))createAndReturnABlockThatSumsTwoNumber;

@end
