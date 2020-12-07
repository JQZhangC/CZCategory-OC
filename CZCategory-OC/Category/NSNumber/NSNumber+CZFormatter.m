//
//  NSNumber+CZFormatter.m
//  CZCategory-OC
//
//  Created by CZ on 2020/12/4.
//

#import "NSNumber+CZFormatter.h"

@implementation NSNumber (CZFormatter)

- (NSString *)cz_maxIntegerDigits:(NSUInteger)digits {
    NSNumberFormatter *format = [[NSNumberFormatter alloc] init];
    format.maximumIntegerDigits = digits;
    return [format stringFromNumber:self];
}

- (NSString *)cz_minIntegerDigits:(NSUInteger)digits {
    NSNumberFormatter *format = [[NSNumberFormatter alloc] init];
    format.minimumIntegerDigits = digits;
    return [format stringFromNumber:self];
}

- (NSString *)cz_maxFractionDigits:(NSUInteger)digits {
    NSNumberFormatter *format = [[NSNumberFormatter alloc] init];
    format.maximumFractionDigits = digits;
    return [format stringFromNumber:self];
}

- (NSString *)cz_minFractionDigits:(NSUInteger)digits {
    NSNumberFormatter *format = [[NSNumberFormatter alloc] init];
    format.minimumFractionDigits = digits;
    return [format stringFromNumber:self];
}

- (NSString *)cz_maxSignificantDigits:(NSUInteger)digits {
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    
    numberFormatter.usesSignificantDigits = true;
    numberFormatter.maximumSignificantDigits = digits;
    return [numberFormatter stringFromNumber:self];
}

- (NSString *)cz_minSignificantDigits:(NSUInteger)digits {
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    numberFormatter.usesSignificantDigits = true;
    numberFormatter.minimumSignificantDigits = 4;
    
    return [numberFormatter stringFromNumber:self];
}


@end
