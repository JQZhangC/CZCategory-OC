//
//  UIImage+CZImageFromView.m
//  CZCategory-OC
//
//  Created by CZ on 2020/12/18.
//

#import "UIImage+CZImageFromView.h"

@implementation UIImage (CZImageFromView)
+ (instancetype)cz_imageFromView:(UIView *)view {
    UIImage *image = nil;
    CGSize size = view.frame.size;
    UIGraphicsBeginImageContextWithOptions(size, false, 0.0); {
        [view drawViewHierarchyInRect:CGRectMake(0, 0, size.width, size.height) afterScreenUpdates:true];
        [view.layer renderInContext:UIGraphicsGetCurrentContext()];
        image = UIGraphicsGetImageFromCurrentImageContext();
    }
    UIGraphicsEndImageContext();
    return image;
}
@end
