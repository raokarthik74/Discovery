//
//  Service.h
//  discovery
//
//  Created by Karthik Rao on 1/20/17.
//  Copyright © 2017 Karthik Rao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DidGetResponse.h"
#import "EventModel.h"
#import "NetworkConfig.h"
#import "TableViewController.h"

@interface Service : NSObject <DidGetResponse>

-(void)getAllNearbyEvents:(TableViewController*)tableViewController;


@end
