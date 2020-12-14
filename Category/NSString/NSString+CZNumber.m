//
//  NSString+CZNumber.m
//  CZCategory-OC
//
//  Created by CZ on 2020/12/4.
//

#import "NSString+CZNumber.h"

@implementation NSString (CZNumber)
- (BOOL)validatePureDigital {
    if (self.length == 0) {
        return NO;
    }
    NSString *validateString = @"^[0-9]+$";
    NSPredicate *numberPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", validateString];
    return [numberPredicate evaluateWithObject:self];
}
@end
