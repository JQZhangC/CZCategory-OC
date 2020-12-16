//
//  UIImage+CZColor.m
//  CZCategory-OC
//
//  Created by CZ on 2020/12/16.
//

#import "UIImage+CZColor.h"

static CGFloat const kDefaultWidth = 10.0;
static CGFloat const kDefaultHeight = 10.0;

@implementation UIImage (CZColor)
+ (instancetype)cz_imageWithColor:(UIColor *)color size:(CGSize)size {
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0);
    
    [color set];
    
    UIRectFill(CGRectMake(0, 0, size.width, size.height));
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
}

+ (instancetype)cz_imageWithColor:(UIColor *)color {
    return [self cz_imageWithColor:color size:CGSizeMake(kDefaultWidth, kDefaultHeight)];
}
@end
