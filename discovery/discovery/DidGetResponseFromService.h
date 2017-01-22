//
//  DidGetResponseFromService.h
//  discovery
//
//  Created by Karthik Rao on 1/21/17.
//  Copyright © 2017 Karthik Rao. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DidGetResponseFromService <NSObject>

-(void)didGetResponseFromService:(Event*)event;

@end
