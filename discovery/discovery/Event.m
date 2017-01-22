//
//  Event.m
//  discovery
//
//  Created by Karthik Rao on 1/21/17.
//  Copyright © 2017 Karthik Rao. All rights reserved.
//

#import "Event.h"

@implementation Event

-(instancetype)initWithPictureUrl:(NSString*) pictureUrl eventTitle:(NSString*)eventTitle andOnClickUrl:(NSString*)onClickUrl{
    
    self = [super init];
    if(self){
        _pictureUrl = pictureUrl;
        _eventTitle = eventTitle;
        _onClickUrl = onClickUrl;
    }
    return self;
}

@end
