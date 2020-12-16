//
//  UIImage+CZColor.h
//  CZCategory-OC
//
//  Created by CZ on 2020/12/16.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (CZColor)

/// 生成一张纯色图片
/// @param color 图片颜色
/// @param size 尺寸
+ (instancetype)cz_imageWithColor:(UIColor *)color size:(CGSize)size;


/// 生成一张纯色图片,默认Size 10*10
/// @param color 图片颜色
+ (instancetype)cz_imageWithColor:(UIColor *)color;
@end

NS_ASSUME_NONNULL_END
