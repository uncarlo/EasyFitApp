//
//  VideoViewCellTableViewCell.h
//  EasyFitApp
//
//  Created by Carlo Toribio on 6/7/14.
//  Copyright (c) 2014 StartupWeekend. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VideoTableViewCell : UITableViewCell

@property (strong, nonatomic) UIView *backgroundView;

@property (strong, nonatomic) UILabel *videoTitleLabel;
@property (strong, nonatomic) UIImageView *videoThumbnailImage;
@property (strong, nonatomic) UIImageView *playButton;
@property (strong, nonatomic) UILabel *descriptionLabel;
@property (strong, nonatomic) UIImageView *descriptionOverlay;
@property (strong, nonatomic) UIButton *favoriteButton;
@property (strong, nonatomic) NSURLSessionTask *task;

@end
