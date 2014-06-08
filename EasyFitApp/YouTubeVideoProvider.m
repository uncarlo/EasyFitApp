//
//  YouTubeVideoProvider.m
//  EasyFitApp
//
//  Created by Carlo Toribio on 6/7/14.
//  Copyright (c) 2014 StartupWeekend. All rights reserved.
//

#import "YouTubeVideoProvider.h"
#import "AFHTTPRequestOperationManager.h"
#import "AFHTTPSessionManager.h"
#import "Video.h"

@implementation YouTubeVideoProvider

@synthesize delegate;
@synthesize channelName;

-(NSArray*)getAllVideosFromURL:(NSString*)url{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    AFJSONResponseSerializer *responseSerializer = [AFJSONResponseSerializer serializerWithReadingOptions:NSJSONReadingMutableContainers];
    manager.responseSerializer = responseSerializer;
    
    [manager GET:url
      parameters:nil
         success:^(AFHTTPRequestOperation *operation, id responseObject) {
             NSMutableArray *videos = [[NSMutableArray alloc] init];
             
             NSDictionary *root = [responseObject valueForKey:@"feed"];
             
             for(NSDictionary *entry in [root valueForKey:@"entry"]) {
                 Video *video = [[Video alloc] initWithDictionary:entry];
                 
                 [videos addObject:video];
             }
             
             if(delegate){
                 [delegate didGetAllVideos:videos];
             }
             
         }
         failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             if(delegate){
                 [delegate didFailToGetAllVideos:error];
             }
         }];
    
    return nil;
}

@end