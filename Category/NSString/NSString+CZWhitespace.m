//
//  NSString+CZWhitespace.m
//  CZCategory-OC
//
//  Created by CZ on 2020/12/4.
//

#import "NSString+CZWhitespace.h"

@implementation NSString (CZWhitespace)
- (NSString *)trim {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

- (NSString *)removeWhitespace {
    return [self stringByReplacingOccurrencesOfString:@" " withString:@""];
}

@end
