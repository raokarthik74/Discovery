//
//  NetworkConfig.h
//  discovery
//
//  Created by Karthik Rao on 1/20/17.
//  Copyright © 2017 Karthik Rao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Service.h"
#import "DidGetResponse.h"

@class NetworkConfig;

@interface NetworkConfig : NSObject

@property(nonatomic, weak) id<DidGetResponse> delegate;

-(void)doPost:(NSString*)url withParameters:(NSDictionary*)parameters;
-(void)doGet:(NSString*)url;

@end
