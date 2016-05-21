//
//  TFCycleScrollCell.m
//  TFCycleScrollView
//
//  Created by Tengfei on 15/9/25.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import "TFCycleScrollCell.h"
#import "TFCycleScrollModel.h"
#import "UIImageView+WebCache.h"

@interface TFCycleScrollCell ()
@property (nonatomic,weak)UIImageView * iconView;
@property (nonatomic,weak)UILabel * titleLabe;;
@end


@implementation TFCycleScrollCell


-(instancetype)init
{
    if (self = [super init]) {
        [self setUpSubViews];
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setUpSubViews];
    }
    return self;
}

-(void)setUpSubViews
{
    UIImageView *iconView = [[UIImageView alloc]init];
    self.iconView = iconView;
    [self addSubview:iconView];
    iconView.contentMode = UIViewContentModeScaleAspectFit;
    iconView.clipsToBounds = YES;
    iconView.image = [UIImage imageNamed:@"icon_)"];
    
    UILabel *titleLabel = [[UILabel alloc]init];
    self.titleLabe = titleLabel;
    [self addSubview:titleLabel];
    titleLabel.textAlignment = NSTextAlignmentLeft;
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat w = self.frame.size.width;
    CGFloat h = self.frame.size.height;
    
//    self.titleLabe.center
    self.titleLabe.frame = CGRectMake(10, 0, w-40, h);
    
    self.iconView.frame = CGRectMake(CGRectGetMaxX(self.titleLabe.frame), 0, 30, h);
}

-(void)setModel:(TFCycleScrollModel *)model
{
    _model = model;
    
//    [self.iconView sd_setImageWithURL:[NSURL URLWithString:model.imgUrl] placeholderImage:[UIImage imageNamed:self.placeholderImage]];
    self.titleLabe.text = model.tittle;
}

@end








