//
//  VideoServiceLocator.m
//  EasyFitApp
//
//  Created by Carlo Toribio on 6/7/14.
//  Copyright (c) 2014 StartupWeekend. All rights reserved.
//

#import "VideoServiceLocator.h"
#import "VideoProviderProtocol.h"
#import "YouTubeVideoProvider.h"

#define INITIALIZE_STATIC(__BLOCK) \
do { static dispatch_once_t onceToken; dispatch_once(&onceToken, (__BLOCK)); } while (0)

@implementation VideoServiceLocator

-(VideoServiceLocator*)initWithProvider:(NSObject<VideoProviderProtocol>*)provider {
    self = [super init];
    
    if([provider conformsToProtocol:@protocol(VideoProviderProtocol)]) {
        self.provider = provider;
    } else {
        NSLog(@"%@", [[NSString alloc]initWithFormat:@"Class %@ does not conforms to protocol LNSDataProviderProtocol", provider.class]);
    }
    
    return self;
}

#pragma mark Instance

+(VideoServiceLocator *) instance {
    static VideoServiceLocator *instance = nil;
    
    INITIALIZE_STATIC(^{
        id<VideoProviderProtocol> provider = [[YouTubeVideoProvider alloc] init];
        instance = [[VideoServiceLocator alloc] initWithProvider:provider];
    });
	
    return instance;
}

@end
