//
//  VideoViewCellTableViewCell.m
//  EasyFitApp
//
//  Created by Carlo Toribio on 6/7/14.
//  Copyright (c) 2014 StartupWeekend. All rights reserved.
//

#import "VideoTableViewCell.h"

@implementation VideoTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style
    reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor colorWithRed:0.85
                                               green:0.85
                                                blue:0.85
                                               alpha:1.0];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.descriptionLabel.numberOfLines = 4;
        
        self.backgroundView = [[UIView alloc] init];
        self.backgroundView.backgroundColor = [UIColor redColor];
        self.backgroundView.backgroundColor = [UIColor colorWithRed:0.08
                                                              green:0.65
                                                               blue:0.40
                                                              alpha:1.0];
        
        self.videoTitleLabel = [[UILabel alloc] init];
        self.videoTitleLabel.textColor = [UIColor whiteColor];
        
        self.videoThumbnailImage = [[UIImageView alloc] init];
        
        self.playButton = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"PlayButton"]];
        self.descriptionOverlay = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"DescriptionOverlay"]];
        
        self.favoriteButton = [[UIButton alloc] init];
        
        self.descriptionLabel = [[UILabel alloc] init];
    }
    
    return self;
}

-(void)layoutSubviews {
    CGFloat frameWidth = CGRectGetWidth(self.frame);
    CGFloat labelWidth = 100.0;
    CGFloat labelX = (frameWidth / 2) - (labelWidth / 2);
    
    self.backgroundView.frame = CGRectMake(0,
                                           0,
                                           frameWidth,
                                           44);
    
    self.videoTitleLabel.frame = CGRectMake(labelX,
                                            6,
                                            labelWidth,
                                            30);
    self.videoTitleLabel.textAlignment = NSTextAlignmentCenter;
    
    self.videoThumbnailImage.frame = CGRectMake(0,
                                                44,
                                                320,
                                                180);
    
    
    CGFloat playButtonWidth = 169;
    CGFloat playButtonX = (frameWidth / 2) - (playButtonWidth / 2);
    
    self.playButton.frame = CGRectMake(playButtonX,
                                       58,
                                       playButtonWidth,
                                       152);
    
    self.descriptionOverlay.frame = CGRectMake(0,
                                               202,
                                               frameWidth,
                                               100);
    
    
    [self.favoriteButton setImage:[UIImage imageNamed:@"FavoriteUncheckedButton"] forState:UIControlStateNormal];
    self.favoriteButton.frame = CGRectMake(250,
                                         235,
                                         53,
                                         53);
    
    self.descriptionLabel.font = [UIFont fontWithName:@"Helvetica" size:15.0];
    self.descriptionLabel.textColor = [UIColor colorWithRed:0.4
                                                      green:0.4
                                                       blue:0.4
                                                      alpha:1.0];
    self.descriptionLabel.frame = CGRectMake(10,
                                             230,
                                             230,
                                             60);
    self.descriptionLabel.numberOfLines = 2;
    
    [self addSubview:self.backgroundView];
    [self addSubview:self.videoTitleLabel];
    [self addSubview:self.videoThumbnailImage];
    [self addSubview:self.playButton];
    [self addSubview:self.descriptionOverlay];
    [self addSubview:self.favoriteButton];
    [self addSubview:self.descriptionLabel];
}

- (void)setSelected:(BOOL)selected
           animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end