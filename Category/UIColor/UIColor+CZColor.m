//
//  UIColor+CZColor.m
//  CZCategory-OC
//
//  Created by CZ on 2020/12/4.
//

#import "UIColor+CZColor.h"

@implementation UIColor (CZColor)
+ (instancetype)cz_colorWithHex:(int)hex {
    return [self cz_colorWithHex:hex alpha:1.0];
}

+ (instancetype)cz_colorWithHex:(int)hex alpha:(CGFloat)alpha {
    return [[UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16)) / 255.0 green:((float)((hex & 0xFF00) >> 8)) / 255.0 blue:((float)(hex & 0xFF)) / 255.0 alpha:1.0f] colorWithAlphaComponent:alpha];
}

+ (instancetype)cz_colorWithRed:(CGFloat)red blue:(CGFloat)blue green:(CGFloat)green {
    return [self cz_colorWithRed:red blue:blue green:green alpha:1.0];
}

+ (instancetype)cz_colorWithRed:(CGFloat)red blue:(CGFloat)blue green:(CGFloat)green alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:red/255.0 green:blue/255.0 blue:green/255.0 alpha:alpha];
}
@end
