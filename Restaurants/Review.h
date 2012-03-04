//
//  Review.h
//  Restaurants
//
//  Created by Galina Rybatsky on 3/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Review : NSObject
{

NSString* reviewer;
NSString* text;

int score;
int numberOfHelpfulReviews;
int numberOfUnhelpfulReviews;
}

@property(readwrite, strong) NSString* reviewer;
@property(readwrite, strong) NSString* text;
@property(readwrite) int score;
@property(readwrite) int numberOfHelpfulReviews;
@property(readwrite) int numberOfUnhelpfulReviews;





@end
