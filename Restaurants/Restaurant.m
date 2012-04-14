//
//  Restaurant.m
//  Restaurants
//

#import "Restaurant.h"
#import "Review.h"

@implementation Restaurant
@synthesize address, name, cuisineType, yearOpened, reviews, DetailViewController;




-(int)age
{
    return 2012 - yearOpened;
}


-(Review*) mostHelpfulReview
{
    Review* mostHelpfulReview = nil;
    //loop thru reviews 
    // Review * mostHelpfulReview
    for (Review* review in reviews)
    {
        if (review.numberOfHelpfulReviews > 4)
        {
            if (mostHelpfulReview == nil) {
                mostHelpfulReview = review;
            }
            //Compare reviewToRuleThemAll.percentage to review.percentage
            //If review.percentage is greater
            //Then replace reviewToRuleThemAll with theis new review
            if(review.percentage > mostHelpfulReview.percentage)
            {
                mostHelpfulReview = review;
            }
        }
        
    }
    
    NSLog (@"Review Text: %@", mostHelpfulReview.text);
    return mostHelpfulReview;
    
}

-(float) averageCustomerReview{
    int sum = 0;
    for (Review* storage in reviews)
    {
        sum+= [storage score];  
    }
    
    return (float) sum/[reviews count];
    
    
}
@end
