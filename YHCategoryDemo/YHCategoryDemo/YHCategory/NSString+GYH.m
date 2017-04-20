//
//  NSString+GYH.m
//  YHCategory
//
//  Created by 郭月辉 on 2017/4/20.
//  Copyright © 2017年 Theshy. All rights reserved.
//

#import "NSString+GYH.h"

@implementation NSString (GYH)

- (NSUInteger)count{
    NSCharacterSet *whiteSpace = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSArray* words = [self componentsSeparatedByCharactersInSet:whiteSpace];
    return [words count];
}

- (NSUInteger)getCharacterCount {
    NSUInteger i, n = [self length], l = 0, a = 0, b = 0;
    unichar c;
    
    for(i = 0; i < n; i++) {
        c = [self characterAtIndex:i];
        if(isblank(c)) {
            b++;
        }
        else if(isascii(c)) {
            a++;
        }
        else {
            l++;
        }
    }
    if(a==0 && l==0) return 0;
    
    return 2*l+a+b;
}

- (BOOL)isEmptyOrWhitespace{
    
    // A nil or NULL string is not the same as an empty string
    return 0 == self.length ||
    ![self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]].length;
}

+ (BOOL)isNilOrNSNull:(NSString *)str {
    if (!str) {
        return YES;
    }
    if ([str isEqual:[NSNull null]]) {
        return YES;
    }
    return NO;
}

+ (BOOL)isEmptyOrWhitespace:(NSString *)str {
    
    if ([NSString isNilOrNSNull:str]) {
        return YES;
    }
    
    if (![str isKindOfClass:[NSString class]]) {
        return YES;
    }
    
    // A nil or NULL string is not the same as an empty string
    return 0 == str.length ||
    ![str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]].length;
}

+ (BOOL)isNilOrNSNullOrEmptyOrWhitespace:(NSString *)str {
    if ([NSString isNilOrNSNull:str]) {
        return YES;
    }
    if ([NSString isEmptyOrWhitespace:str]) {
        return YES;
    }
    return NO;
}

+ (BOOL)isValide:(NSString *)string{
    return ![NSString isNilOrNSNullOrEmptyOrWhitespace:string];
}

+ (NSString *)combinationStringOfArray:(NSArray *)array{
    if (!array) {
        return nil;
    }
    
    NSMutableString *string = [NSMutableString new];
    for (int i = 0; i < array.count; i++) {
        
        NSObject *obj = array[i];
        if (i == 0) {
            [string appendFormat:@"%@", obj];
        } else {
            [string appendFormat:@",%@", obj];
        }
    }
    
    return string;
}

- (NSString*)stripWhiteSpace{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

- (NSString*)stripWhiteSpaceAndNewLine{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

-(CGFloat)getStringHightWithfont:(UIFont*)font width:(CGFloat)width{
    if ( font == nil || width <= 0) {
        return 0.0f;
    }
    
    CGSize s = CGSizeMake(width, 99999.0);
    CGSize size=[self boundingRectWithSize:s
                                   options:\
                 NSStringDrawingTruncatesLastVisibleLine |
                 NSStringDrawingUsesLineFragmentOrigin |
                 NSStringDrawingUsesFontLeading
                                attributes:@{NSFontAttributeName: font}
                                   context:nil].size;
    return size.height;
}

- (CGFloat)getStringWidthWithFont:(UIFont *)font hight:(CGFloat)hight {
    
    if (!font || hight <=0 ) {
        return 0;
    }
    CGSize s = CGSizeMake(99999.0, hight);
    CGSize size = [self boundingRectWithSize:s options: NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName: font} context:nil].size;
    return size.width;
    
}

- (BOOL)isEqualToStringIgnoreCase:(NSString *)anotherString {
    if ([NSString isNilOrNSNull:self]) {
        return NO;
    }
    if ([NSString isNilOrNSNull:anotherString]) {
        return NO;
    }
    
    if ([self.lowercaseString isEqualToString:anotherString.lowercaseString]) {
        return YES;
    }
    else {
        return NO;
    }
}

- (BOOL)isNumeric {
    if ([self length] == 0) {
        return NO;
    }
    NSScanner *sc = [NSScanner scannerWithString:self];
    if ([sc scanFloat:NULL]) {
        return [sc isAtEnd];
    }
    return NO;
}

@end
