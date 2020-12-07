//
//  NSDate+CZFormatter.m
//  CZCategory-OC
//
//  Created by CZ on 2020/12/5.
//

#import "NSDate+CZFormatter.h"

@implementation NSDate (CZFormatter)
- (NSString *)cz_dateStringWithDateFormat:(NSString *)dateFormat {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = dateFormat;
    return [formatter stringFromDate:self];
}

+ (NSString *)cz_stringFromDate:(NSDate *)date dateFormat:(NSString *)dateFormat {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = dateFormat;
    return [formatter stringFromDate:date];
}

+ (NSDate *)cz_dateFromString:(NSString *)dateString dateFormat:(NSString *)dateFormat {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = dateFormat;
    return [formatter dateFromString:dateString];
}

- (NSDate *)cz_dateDistanceTimeInterval:(NSInteger)timeInterval {
    return [self dateByAddingTimeInterval:timeInterval];
}

+ (NSDate *)cz_dateDistanceFromDate:(NSDate *)fromDate timeInterval:(NSTimeInterval)timeInterval {
    return [fromDate dateByAddingTimeInterval:timeInterval];
}

- (NSDate *)cz_dateDistanceDayInterval:(NSInteger)dayInterval {
    return [self cz_dateDistanceTimeInterval:(dayInterval * 86400)];
    
//    NSTimeInterval fromDateInterval = [fromDate timeIntervalSince1970];
//    NSTimeInterval interval = fromDateInterval + (dayInterval * 86400);
//    return [NSDate dateWithTimeIntervalSince1970:interval];
}

+ (NSDate *)cz_dateDistanceFromDate:(NSDate *)fromDate dayInterval:(NSInteger)dayInterval {
    return [self cz_dateDistanceFromDate:fromDate timeInterval:(dayInterval * 86400)];
}
@end
