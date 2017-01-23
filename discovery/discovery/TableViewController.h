//
//  TableViewController.h
//  discovery
//
//  Created by Karthik Rao on 1/20/17.
//  Copyright © 2017 Karthik Rao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventModel.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "WebViewController.h"

@interface TableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property(strong, nonatomic)EventModel *eventModel;

@end
