//
//  VideoServiceLocator.h
//  EasyFitApp
//
//  Created by Carlo Toribio on 6/7/14.
//  Copyright (c) 2014 StartupWeekend. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VideoProviderProtocol.h"

@interface VideoServiceLocator : NSObject

@property (retain,nonatomic) NSObject<VideoProviderProtocol> *provider;

+(VideoServiceLocator *) instance;

@end
