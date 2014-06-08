//
//  Video.h
//  EasyFitApp
//
//  Created by Carlo Toribio on 6/7/14.
//  Copyright (c) 2014 StartupWeekend. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Video : NSObject

@property (copy, nonatomic) NSString *videoTitle;
@property (copy, nonatomic) NSString *videoThumbnailLink;
@property (copy, nonatomic) NSString *videoPublishedDate;
@property (copy, nonatomic) NSString *videoWebLink;
@property (copy, nonatomic) NSString *videoDescription;
@property (copy, nonatomic) NSString *videoEmbedLink;

-(instancetype)initWithDictionary:(NSDictionary*)dictionary;

@end
