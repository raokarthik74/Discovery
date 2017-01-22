//
//  Service.m
//  discovery
//
//  Created by Karthik Rao on 1/20/17.
//  Copyright © 2017 Karthik Rao. All rights reserved.
//

#import "Service.h"

@interface Service()

@property(strong, nonatomic) Event* event;

@end


@implementation Service

-(void)getAllNearbyEvents:(TableViewController*)tableViewController{
    [NetworkConfig doGet:@"https://app.ticketmaster.com/discovery/v2/events.json?size=1&apikey=J59NpU6LWbdYZETInu5F9UXB6boP2vcS" forService:self];
    [tableViewController didGetResponseFromService:self.event];
}

-(void)didGetResponse:(NSData*)data{
    NSDictionary *dictObject = [NSJSONSerialization JSONObjectWithData:data
                                                               options:kNilOptions
                                                                 error:NULL];
    dictObject = [dictObject objectForKey:@"_embedded"];
    NSArray *dataArray = [dictObject objectForKey:@"events"];
    dictObject = [dataArray objectAtIndex:0];
    NSLog(@"dic %@", [dictObject objectForKey:@"name"]);
    NSString* name = [dictObject objectForKey:@"name"];
    NSString* url = [dictObject objectForKey:@"url"];
    NSLog(@"url %@", url);
    name = [name stringByAppendingString:@" "];
    name = [name stringByAppendingString:[dictObject objectForKey:@"type"]];
    name = [name stringByAppendingString:@" on "];
    NSDictionary *dictTime = [dictObject objectForKey:@"dates"];
    dictTime =  [dictTime objectForKey:@"start"];
    name = [name stringByAppendingString:[dictTime objectForKey:@"localDate"]];
    dataArray = [dictObject objectForKey:@"images"];
    dictObject = [dataArray objectAtIndex:4];
    NSString* imageUrl = [dictObject objectForKey:@"url"];
    self.event = [[Event alloc]initWithPictureUrl:imageUrl eventTitle:name andOnClickUrl:url];
}

@end
