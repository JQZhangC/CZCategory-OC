//
//  NSNumber+CZFormatter.h
//  CZCategory-OC
//
//  Created by CZ on 2020/12/4.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSNumber (CZFormatter)

/// 整数部分最大位数
/// 从整数部分右侧开始,位数不得多于digits
/// 小数部分会四舍五入到整数部分
/// 不再包含小数部分
/// @param digits 位数
- (NSString *)cz_maxIntegerDigits:(NSUInteger)digits;

/// 整数部分最小位数
/// 从整数部分右侧开始,位数不得少于digits,少则向右用0补齐
/// 小数部分会四舍五入到整数部分
/// 不再包含小数部分
/// @param digits 位数
- (NSString *)cz_minIntegerDigits:(NSUInteger)digits;

/// 小数点后最大位数
/// 小数点位数不得多于digits
/// 会四舍五入
/// @param digits 小数位数
- (NSString *)cz_maxFractionDigits:(NSUInteger)digits;

/// 小数点后最小位数
/// 小数点位数不得少于digits,少则向左用0补齐
/// 会四舍五入
/// @param digits 小数位数
- (NSString *)cz_minFractionDigits:(NSUInteger)digits;

/// 数字可以保留最多位数
/// 从左侧第一个非零位开始,位数不得多于digits
/// 不会四舍五入
/// @param digits 从左边第一个非零数字开始的位数
- (NSString *)cz_maxSignificantDigits:(NSUInteger)digits;

/// 数字可以保留至少位数
/// 从左侧第一个非零位开始,位数不得少于digits,少则用0补全
/// 不会四舍五入
/// @param digits 从左边第一个非零数字开始的位数
- (NSString *)cz_minSignificantDigits:(NSUInteger)digits;
@end

NS_ASSUME_NONNULL_END
