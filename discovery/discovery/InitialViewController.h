//
//  InitialViewController.h
//  discovery
//
//  Created by Karthik Rao on 1/22/17.
//  Copyright © 2017 Karthik Rao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Service.h"
#import "DidGetResponseFromService.h"
#import "EventModel.h"
#import "TableViewController.h"

@interface InitialViewController : UIViewController <DidGetResponseFromService>

@end
