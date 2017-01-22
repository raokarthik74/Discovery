//
//  TableViewController.h
//  discovery
//
//  Created by Karthik Rao on 1/20/17.
//  Copyright © 2017 Karthik Rao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Service.h"
#import "DidGetResponseFromService.h"
#import "EventModel.h"

@interface TableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource, DidGetResponseFromService>

@end
