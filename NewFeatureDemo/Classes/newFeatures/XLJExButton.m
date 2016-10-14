//
//  XLJExButton.m
//  NewFeatureDemo
//
//  Created by m on 2016/10/11.
//  Copyright © 2016年 XLJ. All rights reserved.
//

#import "XLJExButton.h"
#import "UIView+XLJExternFrame.h"

@interface XLJExButton ()

@property (nonatomic, strong) tapAction tapButtonAction;

@end

@implementation XLJExButton

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.frame = frame;
        [self setImage];
    }
    return self;
}

- (void)setImage
{
    self.XLJImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    self.XLJImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:self.XLJImageView];
    
    self.XLJLable = [[UILabel alloc] initWithFrame:CGRectZero];
    self.XLJLable.backgroundColor = [UIColor clearColor];
    self.XLJLable.textAlignment = NSTextAlignmentCenter;
    [self addSubview:self.XLJLable];
    
    [self addTarget:self action:@selector(didClickedButtonAction:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)setTitleFrame:(CGRect)frame
{
    self.XLJLable.frame = frame;
}

- (void)setImageFrame:(CGRect)frame
{
    self.XLJImageView.frame = frame;
}

- (void)setTItleOriginX:(CGFloat)x sizeWidth:(CGFloat)width
{
    self.XLJLable.frame = CGRectMake(x, 0, width, self.size.height);
}

- (void)setImageOriginX:(CGFloat)x sizeWidth:(CGFloat)width
{
    self.XLJImageView.frame = CGRectMake(x, self.size.height/2.0 - width/2.0, width, width);
}

- (void)setTitleCenterWithWidth:(CGFloat)width
{
    self.XLJLable.frame = CGRectMake(self.size.width/2.0 - width/2.0, 0, width, self.size.height);
}

- (void)setImageCenterWithWidth:(CGFloat)width
{
    self.XLJImageView.frame = CGRectMake(self.size.width/2.0 - width/2.0, self.size.height/2.0 - width/2.0, width, width);
}

- (void)didClickedButtonAction:(XLJExButton *)sender
{
    if (self.tapButtonAction) {
        self.tapButtonAction(sender);
    }
}
- (void)tapAction:(tapAction)action
{
    if (!action) return;
    
    self.tapButtonAction = action;
}

@end
