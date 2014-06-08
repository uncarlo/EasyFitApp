//
//  Video.m
//  EasyFitApp
//
//  Created by Carlo Toribio on 6/7/14.
//  Copyright (c) 2014 StartupWeekend. All rights reserved.
//

#import "Video.h"

@implementation Video

-(instancetype)initWithDictionary:(NSDictionary*)dictionary{
    self = [super init];
    if(self){
        id titleResponse = [dictionary valueForKey:@"title"];
        self.videoTitle = [titleResponse valueForKey:@"$t"];
        
        id mediaGroupResponse = [dictionary valueForKey:@"media$group"];
        
        id mediaThumbnailResponse = [mediaGroupResponse valueForKey:@"media$thumbnail"][0];
        // [0] = 90x180
        // [1] = 180x320
        // [2] = 360x480
        // [3] = 480x640
        self.videoThumbnailLink = [mediaThumbnailResponse valueForKey:@"url"];
        
        id publishedDateResponse = [dictionary valueForKey:@"published"];
        self.videoPublishedDate = [publishedDateResponse valueForKey:@"$t"];
        
        id webLinkResponse = [dictionary valueForKey:@"link"][0];
        self.videoWebLink = [webLinkResponse valueForKey:@"href"];
        
        id descriptionResponse = [mediaGroupResponse valueForKey:@"media$description"];
        self.videoDescription = [descriptionResponse valueForKey:@"$t"];
        
        id contentResponse = [mediaGroupResponse valueForKey:@"yt$videoid"];
        
        self.videoEmbedLink = [NSString stringWithFormat:@"https://www.youtube.com/embed/%@", [contentResponse valueForKey:@"$t"]];
    }
    
    return self;
}

@end
