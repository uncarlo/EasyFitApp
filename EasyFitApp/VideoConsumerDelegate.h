//
//  VideoConsumerDelegate.h
//  EasyFitApp
//
//  Created by Carlo Toribio on 6/7/14.
//  Copyright (c) 2014 StartupWeekend. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol VideoConsumerDelegate <NSObject>

@required
-(void)didGetAllVideos:(NSArray*)videos;
-(void)didFailToGetAllVideos:(NSError*)error;

@end
