//
//  NSString+CZValidPhoneNumber.m
//  CZCategory-OC
//
//  Created by CZ on 2020/12/4.
//

#import "NSString+CZValidPhoneNumber.h"

@implementation NSString (CZValidPhoneNumber)
- (BOOL)cz_legalPhoneNumber {
    NSString *mobileRegexp = @"^1[3-9]\\d{9}$";
    NSPredicate *regexp = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileRegexp];
    return [regexp evaluateWithObject:self];
}
@end
