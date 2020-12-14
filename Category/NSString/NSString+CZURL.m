//
//  NSString+CZURL.m
//  CZCategory-OC
//
//  Created by CZ on 2020/12/4.
//

#import "NSString+CZURL.h"

@implementation NSString (CZURL)

- (NSString *)URLEncodedString {
    return [self stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
}

- (NSString *)URLDecodedString {
    NSString *string = self;
    if (string.length == 0) {
        return string;
    }
    return  (NSString *)CFBridgingRelease(CFURLCreateStringByReplacingPercentEscapes(kCFAllocatorDefault, (CFStringRef)string, CFSTR("")));
}
@end
