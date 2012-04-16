//
//  ReviewViewController.h
//  Restaurants
//
//  Created by Galina Rybatsky on 4/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Restaurant.h"
#import "DetailViewController.h"

@interface ReviewViewController : UITableViewController
{
    Restaurant* restaurant;
    
}

@property (readwrite, strong) Restaurant* restaurant;


@end
