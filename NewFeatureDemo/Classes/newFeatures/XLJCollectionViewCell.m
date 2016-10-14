//
//  XLJCollectionViewCell.m
//  NewFeatureDemo
//
//  Created by m on 2016/10/11.
//  Copyright © 2016年 XLJ. All rights reserved.
//

#import "XLJCollectionViewCell.h"
#import "XLJExButton.h"
#import "UIView+XLJExternFrame.h"

@interface XLJCollectionViewCell()
@property (nonatomic, strong) UIImageView *imageView;
@end

@implementation XLJCollectionViewCell

- (UIImageView *)imageView
{
    if (!_imageView) {
        
        UIImageView *tempImageView = [[UIImageView alloc] initWithFrame:self.contentView.bounds];
        _imageView = tempImageView;
        
        [self.contentView addSubview:_imageView];
    }
    
    return _imageView;
}

//重写set方法
- (void)setImage:(UIImage *)image
{
    _image = image;
    
    self.imageView.image = image;
}

- (void)setCurrentPageIndex:(NSInteger)currentPage lastPageIndex:(NSInteger)lastIndex
{
    if (currentPage == lastIndex) {
        self.startButton.hidden = NO;
    }else{
        [self.contentView addSubview:self.startButton];
        self.startButton.hidden = YES;
    }
}

//点击开始按钮的跳转
- (void)startAction:(XLJExButton *)sender
{
    self.window.rootViewController = self.toController;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self initilzation];
    }
    return self;
}

//布局子控制器
- (void)layoutSubviews
{
    [super layoutSubviews];
    [self.startButton setTItleOriginX:20 sizeWidth:80];
    //设置图片
    [self.startButton setImage:[UIImage imageNamed:self.imageNameStr] forState:UIControlStateNormal];
    //设置开始按钮的中心位置
    self.startButton.center = CGPointMake(self.width / 2.0, self.height *self.startHeight);
}

- (void)initilzation
{
    XLJExButton *tempStartButton = [XLJExButton buttonWithType:UIButtonTypeCustom];
    tempStartButton.layer.cornerRadius = 2;
    tempStartButton.layer.masksToBounds = YES;
    //尺寸自适应
    [tempStartButton sizeToFit];
    
    //添加点击事件
    [tempStartButton addTarget:self action:@selector(startAction:) forControlEvents:UIControlEventTouchUpInside];
    self.startButton = tempStartButton;
}

@end
