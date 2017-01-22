//
//  NetworkConfig.h
//  discovery
//
//  Created by Karthik Rao on 1/20/17.
//  Copyright © 2017 Karthik Rao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Service.h"

@interface NetworkConfig : NSObject

+(void)doPost:(NSString*)url withParameters:(NSDictionary*)parameters forService:(Service*)service;
+(void)doGet:(NSString*)url forService:(Service*)service;

@end
