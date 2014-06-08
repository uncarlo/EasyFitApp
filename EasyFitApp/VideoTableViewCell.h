//
//  VideoViewCellTableViewCell.h
//  EasyFitApp
//
//  Created by Carlo Toribio on 6/7/14.
//  Copyright (c) 2014 StartupWeekend. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VideoTableViewCell : UITableViewCell

@property (strong, nonatomic) UILabel *dayLabel;
@property (strong, nonatomic) UIImageView *videoThumbnailImage;
@property (strong, nonatomic) UILabel *descriptionLabel;
@property (strong, nonatomic) NSURLSessionTask *task;

@end
