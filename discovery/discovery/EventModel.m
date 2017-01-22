//
//  EventModel.m
//  discovery
//
//  Created by Karthik Rao on 1/21/17.
//  Copyright © 2017 Karthik Rao. All rights reserved.
//

#import "EventModel.h"

@implementation EventModel

-(instancetype)init{
    self = [super init];
    if (self) {
        _eventArray = [[NSMutableArray alloc]init];
    }
    return self;
}

+ (instancetype) sharedModel
{
    static EventModel *_sharedModel = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedModel = [[self alloc]init];
    });
    
    return _sharedModel;
}

-(NSUInteger)numberOfEvents{
    return [self.eventArray count];
}

-(Event*)eventAtIndex:(NSUInteger)index{
    if (index > [self.eventArray count]-1) {
        return nil;
    }
    return [self.eventArray objectAtIndex:index];
}

-(void) insertEventWithPictureUrl:(NSString*) pictureUrl eventTitle:(NSString*)eventTitle andOnClickUrl:(NSString*)onClickUrl{
    Event* event = [[Event alloc]initWithPictureUrl:pictureUrl eventTitle:eventTitle andOnClickUrl:onClickUrl];
    [self.eventArray addObject:event];
}

-(void) insertEventIntoModel:(Event*)event{
    [self.eventArray addObject:event];
}

@end
