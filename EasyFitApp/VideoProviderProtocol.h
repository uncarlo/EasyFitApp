//
//  VideoProviderProtocol.h
//  EasyFitApp
//
//  Created by Carlo Toribio on 6/7/14.
//  Copyright (c) 2014 StartupWeekend. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VideoConsumerDelegate.h"

@protocol VideoProviderProtocol <NSObject>

@property (retain, nonatomic) id<VideoConsumerDelegate> delegate;
@property (copy, nonatomic) NSString *channelName;

-(NSArray*)getAllVideosFromURL:(NSString*)url;

@end
