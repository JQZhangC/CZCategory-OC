//
//  UIColor+CZRandom.m
//  CZCategory-OC
//
//  Created by CZ on 2020/12/4.
//

#import "UIColor+CZRandom.h"

@implementation UIColor (CZRandom)
+ (instancetype)cz_randomColor {
    return [UIColor colorWithRed:arc4random_uniform(256)/255.0
                           green:arc4random_uniform(256)/255.0
                            blue:arc4random_uniform(256)/255.0
                           alpha:1.0];
}
@end
