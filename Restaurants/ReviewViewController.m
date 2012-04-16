//
//  ReviewViewController.m
//  Restaurants
//
//  Created by Galina Rybatsky on 4/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ReviewViewController.h"
#import "Restaurant.h"
#import "DetailViewController.h"


@implementation ReviewViewController
@synthesize restaurant;

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section   
{
    return [[restaurant reviews] count];
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* cellIdentifier = @"ReviewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    UILabel* reviewTextLabel = (UILabel*) [cell viewWithTag:1];
    UILabel* reviewHepfulnessLabel = (UILabel*) [cell viewWithTag:2];
    Review* reviewForIndexPath = [restaurant.reviews objectAtIndex:indexPath.row];
    reviewTextLabel.text = reviewForIndexPath.text;
    reviewHepfulnessLabel.text = [NSString stringWithFormat:@"%i of %i found this review helpful", reviewForIndexPath.numberOfHelpfulReviews,
                                  reviewForIndexPath.numberOfHelpfulReviews + reviewForIndexPath.numberOfHelpfulReviews];
    return cell;
}



@end
