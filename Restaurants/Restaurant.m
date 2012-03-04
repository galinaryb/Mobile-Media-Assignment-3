//
//  Restaurant.m
//  Restaurants
//

#import "Restaurant.h"
#import "Review.h"

@implementation Restaurant
@synthesize address, name, cuisineType, yearOpened, reviews;


-(int)age
{
    return 2012 - yearOpened;
}

-(Review*) mostHelpfulReview


@end
