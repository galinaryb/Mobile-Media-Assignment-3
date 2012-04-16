//
//  DetailViewController.m
//  Restaurants
//
//

#import "DetailViewController.h"
#import "ReviewViewController.h"

@implementation DetailViewController
@synthesize addressLabel;
@synthesize navigationHeader;
@synthesize cuisineLabel;
@synthesize ageLabel;
@synthesize helpfulReviewPercentageLabel;
@synthesize helpfulReviewLabel;
@synthesize restaurant;

@synthesize star1;
@synthesize star2;
@synthesize star3;
@synthesize star4;
@synthesize star5;

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    addressLabel.text = [restaurant address];
    navigationHeader.title = [restaurant name];
    cuisineLabel.text = [restaurant cuisineType];
    ageLabel.text = [NSString stringWithFormat:@"Est. %i (%i years ago)", restaurant.yearOpened, [restaurant age]];
    
   
    
    
    Review* mostHelpful=[restaurant mostHelpfulReview];
    
    helpfulReviewLabel.text = [mostHelpful text];
    if (helpfulReviewLabel.text == nil) {
        helpfulReviewLabel.text = @"Not enough helpful reviews yet.";
    }
    helpfulReviewPercentageLabel.text = [NSString stringWithFormat: @"%i out of %i found this review helpful", mostHelpful.numberOfHelpfulReviews, [mostHelpful total]];
    
    if (helpfulReviewPercentageLabel.text == nil){
        helpfulReviewPercentageLabel.text = @" ";
    }
   
     


if (([restaurant averageCustomerReview] > 0.1) && ([restaurant averageCustomerReview] < 1.45)) {  
    star1.image = [UIImage imageNamed:@"Star_ON.png"];
}  
    if (([restaurant averageCustomerReview] > 1.5) && ([restaurant averageCustomerReview] < 2.45)) {  
        (star2.image = [UIImage imageNamed:@"Star_ON.png"]) && (star1.image = [UIImage imageNamed:@"Star_ON.png"]);
    }  
    if (([restaurant averageCustomerReview] > 2.5) && ([restaurant averageCustomerReview] < 3.45)) {  
        (star2.image = [UIImage imageNamed:@"Star_ON.png"]) && (star1.image = [UIImage imageNamed:@"Star_ON.png"]) && (star3.image = [UIImage imageNamed:@"Star_ON.png"]);
    } 
    if (([restaurant averageCustomerReview] > 3.5) && ([restaurant averageCustomerReview] < 4.45)) {
         (star2.image = [UIImage imageNamed:@"Star_ON.png"]) && (star1.image = [UIImage imageNamed:@"Star_ON.png"]) && (star3.image = [UIImage imageNamed:@"Star_ON.png"])&&
        (star4.image = [UIImage imageNamed:@"Star_ON.png"]);
    }
    if (([restaurant averageCustomerReview] > 4.5) && ([restaurant averageCustomerReview] < 4.45)) { 
        (star2.image = [UIImage imageNamed:@"Star_ON.png"]) && (star1.image = [UIImage imageNamed:@"Star_ON.png"]) && (star3.image = [UIImage imageNamed:@"Star_ON.png"]) &&
        (star4.image = [UIImage imageNamed:@"Star_ON.png"])&&
        (star5.image = [UIImage imageNamed:@"Star_ON.png"]);
    } 
    
    
}

- (void)viewDidUnload
{
    [self setAddressLabel:nil];
    [self setNavigationHeader:nil];
    [self setCuisineLabel:nil];
    [self setAgeLabel:nil];
    [self setHelpfulReviewPercentageLabel:nil];
    [self setHelpfulReviewLabel:nil];
    [self setStar1:nil];
    [self setStar2:nil];
    [self setStar3:nil];
    [self setStar4:nil];
    [self setStar5:nil];
    [super viewDidUnload];
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ReviewViewController* reviewVC = (ReviewViewController*) [segue destinationViewController];
    reviewVC.restaurant = restaurant;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


@end
