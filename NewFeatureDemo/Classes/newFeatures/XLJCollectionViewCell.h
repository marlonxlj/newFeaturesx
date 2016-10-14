//
//  XLJCollectionViewCell.h
//  NewFeatureDemo
//
//  Created by m on 2016/10/11.
//  Copyright © 2016年 XLJ. All rights reserved.
//

#import <UIKit/UIKit.h>
@class XLJExButton;
@interface XLJCollectionViewCell : UICollectionViewCell
/**滚动图片*/
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, assign) CGFloat startHeight;
@property (nonatomic, strong) UIViewController *toController;
@property (nonatomic, strong) XLJExButton *startButton;
@property (nonatomic, strong) NSString *imageNameStr;

/**
 *  判断当前页码和最后一个页码
 *
 *  @param currentPage 当前页码
 *  @param lastIndex   最后一个页码
 */
- (void)setCurrentPageIndex:(NSInteger)currentPage lastPageIndex:(NSInteger)lastIndex;



@end
