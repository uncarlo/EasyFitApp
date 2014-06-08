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
        // Initialization code
        
        CGFloat labelWidth = 100.0;
        CGFloat frameWidth = CGRectGetWidth(self.frame);
        CGFloat labelX = (frameWidth / 2) - (labelWidth / 2);
        
        self.dayLabel = [[UILabel alloc] initWithFrame:CGRectMake(labelX,
                                                                  10,
                                                                  labelWidth,
                                                                  30)];
        self.dayLabel.textAlignment = NSTextAlignmentCenter;
        self.videoThumbnailImage = [[UIImageView alloc] initWithFrame:CGRectMake(10,
                                                                                 50,
                                                                                 300,
                                                                                 180)];
        self.descriptionLabel = [[UILabel alloc] initWithFrame:CGRectMake(10,
                                                                          230,
                                                                          300,
                                                                          100)];
        self.descriptionLabel.numberOfLines = 4;
        
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    return self;
}

-(void)layoutSubviews {
    [self addSubview:self.dayLabel];
    [self addSubview:self.videoThumbnailImage];
    [self addSubview:self.descriptionLabel];
}

- (void)setSelected:(BOOL)selected
           animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end