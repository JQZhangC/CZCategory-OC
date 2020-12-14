//
//  NSDate+CZFormatter.h
//  CZCategory-OC
//
//  Created by CZ on 2020/12/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (CZFormatter)

/// 根据formatter格式返回日期字符串
/// @param dateFormat 日期格式
- (NSString *)cz_dateStringWithDateFormat:(NSString *)dateFormat;


/// 根据formatter格式返回日期字符串
/// @param date 日期
/// @param dateFormat 日期格式
+ (NSString *)cz_stringFromDate:(NSDate *)date
                     dateFormat:(NSString *)dateFormat;

/// 根据formatter格式返回日期
/// @param dateString 日期字符串
/// @param dateFormat 日期格式
+ (NSDate *)cz_dateFromString:(NSString *)dateString
                   dateFormat:(NSString *)dateFormat;


/// 返回一个dayInterval间隔的日期
/// @param fromDate 源日期
/// @param timeInterval 时间间隔,单位秒
+ (NSDate *)cz_dateDistanceFromDate:(NSDate *)fromDate
                        timeInterval:(NSTimeInterval)timeInterval;

/// 返回一个dayInterval间隔的日期
/// @param timeInterval 时间间隔,单位秒
- (NSDate *)cz_dateDistanceTimeInterval:(NSInteger)timeInterval;

/// 返回一个dayInterval间隔的日期
/// @param fromDate 源日期
/// @param dayInterval 时间间隔,单位天
+ (NSDate *)cz_dateDistanceFromDate:(NSDate *)fromDate
                        dayInterval:(NSInteger)dayInterval;

/// 返回一个dayInterval间隔的日期
/// @param dayInterval 时间间隔,单位天
- (NSDate *)cz_dateDistanceDayInterval:(NSInteger)dayInterval;
@end

NS_ASSUME_NONNULL_END
