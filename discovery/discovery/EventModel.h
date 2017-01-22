//
//  EventModel.h
//  discovery
//
//  Created by Karthik Rao on 1/21/17.
//  Copyright © 2017 Karthik Rao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Event.h"

@interface EventModel : NSObject

@property(strong, atomic, readonly) NSMutableArray* eventArray;

-(NSUInteger)numberOfEvents;
-(Event*)eventAtIndex:(NSUInteger)index;
-(void) insertEventWithPictureUrl:(NSString*) pictureUrl eventTitle:(NSString*)eventTitle andOnClickUrl:(NSString*)onClickUrl;
-(void) insertEventIntoModel:(Event*)event;

@end
