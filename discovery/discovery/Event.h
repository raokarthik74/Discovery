//
//  Event.h
//  discovery
//
//  Created by Karthik Rao on 1/21/17.
//  Copyright © 2017 Karthik Rao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Event : NSObject

@property(strong, nonatomic, readonly) NSString* pictureUrl;
@property(strong, nonatomic, readonly) NSString* eventTitle;
@property(strong, nonatomic, readonly) NSString* onClickUrl;

-(instancetype)initWithPictureUrl:(NSString*) pictureUrl eventTitle:(NSString*)eventTitle andOnClickUrl:(NSString*)onClickUrl;

@end
