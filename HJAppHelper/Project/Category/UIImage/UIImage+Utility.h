//
//  UIImage+Utility.h
//  HJAppHelper
//
//  Created by huangjian on 16/3/9.
//  Copyright © 2016年 huangjian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Utility)

#pragma mark - 图片矫正
- (UIImage *)fixOrientation;

/**
 *  调整图片的大小
 */
- (UIImage*)transformWidth:(CGFloat)width height:(CGFloat)height;

@end
