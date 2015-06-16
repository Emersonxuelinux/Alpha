//
//  ALPHAHierarchyTableViewCell.m
//  Alpha
//
//  Created by Dal Rupnik on 16/06/15.
//  Copyright (c) 2015 Unified Sense. All rights reserved.
//

#import "ALPHAHierarchyTableViewCell.h"

#import "FLEXUtility.h"

@interface ALPHAHierarchyTableViewCell ()

@property (nonatomic, strong) UIView *depthIndicatorView;
@property (nonatomic, strong) UIImageView *colorCircleImageView;

@end

@implementation ALPHAHierarchyTableViewCell

- (instancetype)init
{
    return [self initWithReuseIdentifier:@"HierarchyTableViewCell"];
}

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier
{
    return [self initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self)
    {
        self.depthIndicatorView = [[UIView alloc] init];
        self.depthIndicatorView.backgroundColor = [FLEXUtility hierarchyIndentPatternColor];
        [self.contentView addSubview:self.depthIndicatorView];
        
        UIImage *defaultCircleImage = [FLEXUtility circularImageWithColor:[UIColor blackColor] radius:5.0];
        self.colorCircleImageView = [[UIImageView alloc] initWithImage:defaultCircleImage];
        [self.contentView addSubview:self.colorCircleImageView];
        
        
    }
    return self;
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
    [super setHighlighted:highlighted animated:animated];
    
    // UITableViewCell changes all subviews in the contentView to backgroundColor = clearColor.
    // We want to preserve the hierarchy background color when highlighted.
    self.depthIndicatorView.backgroundColor = [FLEXUtility hierarchyIndentPatternColor];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // See setHighlighted above.
    self.depthIndicatorView.backgroundColor = [FLEXUtility hierarchyIndentPatternColor];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    const CGFloat kContentPadding = 10.0;
    const CGFloat kDepthIndicatorWidthMultiplier = 4.0;
    
    CGRect depthIndicatorFrame = CGRectMake(kContentPadding, 0, self.viewDepth * kDepthIndicatorWidthMultiplier, self.contentView.bounds.size.height);
    self.depthIndicatorView.frame = depthIndicatorFrame;
    
    CGRect circleFrame = self.colorCircleImageView.frame;
    circleFrame.origin.x = CGRectGetMaxX(depthIndicatorFrame);
    circleFrame.origin.y = self.textLabel.frame.origin.y + FLEXFloor((self.textLabel.frame.size.height - circleFrame.size.height) / 2.0);
    self.colorCircleImageView.frame = circleFrame;
    
    CGRect textLabelFrame = self.textLabel.frame;
    CGFloat textOriginX = CGRectGetMaxX(circleFrame) + 4.0;
    textLabelFrame.origin.x = textOriginX;
    textLabelFrame.size.width = CGRectGetMaxX(self.contentView.bounds) - kContentPadding - textOriginX;
    self.textLabel.frame = textLabelFrame;
    
    CGRect detailTextLabelFrame = self.detailTextLabel.frame;
    CGFloat detailOriginX = CGRectGetMaxX(depthIndicatorFrame);
    detailTextLabelFrame.origin.x = detailOriginX;
    detailTextLabelFrame.size.width = CGRectGetMaxX(self.contentView.bounds) - kContentPadding - detailOriginX;
    self.detailTextLabel.frame = detailTextLabelFrame;
}

- (void)setViewColor:(UIColor *)viewColor
{
    if (![_viewColor isEqual:viewColor]) {
        _viewColor = viewColor;
        self.colorCircleImageView.image = [FLEXUtility circularImageWithColor:viewColor radius:6.0];
    }
}

- (void)setViewDepth:(NSInteger)viewDepth
{
    if (_viewDepth != viewDepth) {
        _viewDepth = viewDepth;
        [self setNeedsLayout];
    }
}
@end