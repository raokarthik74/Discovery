//
//  Service.m
//  discovery
//
//  Created by Karthik Rao on 1/20/17.
//  Copyright © 2017 Karthik Rao. All rights reserved.
//

#import "Service.h"


@implementation Service

@synthesize serviceDelegete;
static int const size = 15;

-(void)getAllNearbyEvents{
    NetworkConfig* networkConfig = [[NetworkConfig alloc]init];
    networkConfig.delegate = self;
    [networkConfig doGet:[NSString stringWithFormat:@"https://app.ticketmaster.com/discovery/v2/events.json?size=%d&apikey=J59NpU6LWbdYZETInu5F9UXB6boP2vcS", size]];
}


-(void)didGetResponse:(NSData*)data{
    EventModel *eventModel = [[EventModel alloc]init];
    Event* event;
    NSDictionary *mainDictObject = [NSJSONSerialization JSONObjectWithData:data
                                                               options:kNilOptions
                                                                 error:NULL];
    
    for (int i=0; i<size; i++) {
        NSDictionary* dictObject = [mainDictObject objectForKey:@"_embedded"];
        NSArray *dataArray = [dictObject objectForKey:@"events"];
        dictObject = [dataArray objectAtIndex:i];
        NSLog(@"dic %@", [dictObject objectForKey:@"name"]);
        NSString* name = [dictObject objectForKey:@"name"];
        NSString* url = [dictObject objectForKey:@"url"];
        NSLog(@"url %@", url);
        name = [name stringByAppendingString:@" "];
        name = [name stringByAppendingString:[dictObject objectForKey:@"type"]];
        dataArray = [dictObject objectForKey:@"images"];
        NSDictionary* imageDictionary = [dataArray objectAtIndex:4];
        NSString* imageUrl = [imageDictionary objectForKey:@"url"];
        event = [[Event alloc]initWithPictureUrl:imageUrl eventTitle:name andOnClickUrl:url];
        [eventModel insertEventIntoModel:event];
    }
        [serviceDelegete didGetResponseFromService:eventModel];
}

@end
