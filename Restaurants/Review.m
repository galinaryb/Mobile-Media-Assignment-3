//
//  Review.m
//  Restaurants
//
//  Created by Galina Rybatsky on 3/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Review.h"

@implementation Review
@synthesize reviewer, text, score, numberOfHelpfulReviews, numberOfUnhelpfulReviews;

-(int) total
{
    return numberOfHelpfulReviews + numberOfUnhelpfulReviews;
}


@end
