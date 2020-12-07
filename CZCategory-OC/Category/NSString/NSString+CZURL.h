//
//  NSString+CZURL.h
//  CZCategory-OC
//
//  Created by CZ on 2020/12/4.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (CZURL)
/**
 *  URLEncode
 */
- (nullable NSString *)URLEncodedString;

/**
 *  URLDecode
 */
- (nullable NSString *)URLDecodedString;
@end

NS_ASSUME_NONNULL_END
