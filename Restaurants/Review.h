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
int numberofHelpfulReviews;
int numberofUnhelpfulReviews;
}

@property(readwrite, strong) NSString* reviewer;
@property(readwrite, strong) NSString* text;
@property(readwrite) int score;
@property(readwrite) int numberofHelpfulReviews;
@property(readwrite) int numberofUnhelpfulReviews;





@end
