//
//  UIView+XLJExternFrame.m
//  NewFeatureDemo
//
//  Created by m on 2016/10/11.
//  Copyright © 2016年 XLJ. All rights reserved.
//

#import "UIView+XLJExternFrame.h"

@implementation UIView (XLJExternFrame)

- (void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    
    frame.origin.x = x;
    
    self.frame = frame;
}

- (CGFloat)x
{
    return self.frame.origin.x;
}

- (void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    
    frame.origin.y = y;
    
    self.frame = frame;
}

- (CGFloat)y
{
    return self.frame.origin.y;
}

- (void)setCenterX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerX
{
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)centerY
{
    return self.center.y;
}

- (void)setWidth:(CGFloat)width
{
    CGSize size = self.size;
    size.width = width;
    self.size = size;
}

- (CGFloat)width
{
    return self.size.width;
}

- (void)setHeight:(CGFloat)height
{
    CGSize size = self.size;
    size.height = height;
    self.size = size;
}

- (CGFloat)height
{
    return self.size.height;
}

- (void)setOrigin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGPoint)origin
{
    return self.frame.origin;
}

- (void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size
{
    return self.frame.size;
}

@end
