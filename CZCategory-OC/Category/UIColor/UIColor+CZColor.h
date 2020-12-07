//
//  UIColor+CZColor.h
//  CZCategory-OC
//
//  Created by CZ on 2020/12/4.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (CZColor)

/// 创建一个color,默认alpha 1.0
/// 透明度 1.0
/// @param hex 十六进制色值
+ (instancetype)cz_colorWithHex:(int)hex;

/// 创建一个color
/// @param hex 十六进制色值
/// @param alpha 透明度 [0-1]
+ (instancetype)cz_colorWithHex:(int)hex alpha:(CGFloat)alpha;

/// 创建一个color
/// 透明度 1.0
/// @param red 红色色值 [0-255]
/// @param blue 蓝色色值 [0-255]
/// @param green 绿色色值 [0-255]
+ (instancetype)cz_colorWithRed:(CGFloat)red blue:(CGFloat)blue green:(CGFloat)green;

/// 创建一个color
/// @param red 红色色值 [0-255]
/// @param blue 蓝色色值 [0-255]
/// @param green 绿色色值 [0-255]
/// @param alpha 透明度 [0-1]
+ (instancetype)cz_colorWithRed:(CGFloat)red blue:(CGFloat)blue green:(CGFloat)green alpha:(CGFloat)alpha;
@end

NS_ASSUME_NONNULL_END
