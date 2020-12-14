//
//  NSString+CZValidPhoneNumber.h
//  CZCategory-OC
//
//  Created by CZ on 2020/12/4.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (CZValidPhoneNumber)
/// 校验电话号码的合法性
- (BOOL)cz_legalPhoneNumber;
@end

NS_ASSUME_NONNULL_END
