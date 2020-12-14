//
//  NSString+CZWhitespace.h
//  CZCategory-OC
//
//  Created by CZ on 2020/12/4.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (CZWhitespace)

/// 去除左右两边的空白符
- (NSString *)trim;

/// 去除所有的空白符
- (NSString *)removeWhitespace;
@end

NS_ASSUME_NONNULL_END
