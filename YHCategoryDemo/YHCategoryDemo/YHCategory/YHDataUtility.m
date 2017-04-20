//
//  YHDataUtility.m
//  YHCategory
//
//  Created by 郭月辉 on 2017/4/20.
//  Copyright © 2017年 Theshy. All rights reserved.
//

#import "YHDataUtility.h"
#import "NSNumber+GYH.h"

/**
 *	Object转String
 *
 *	@param	object	Dictionary中的对象
 *
 *	@return	NSString
 */
NSString *stringWithObject(id object) {
    
    if ([object isKindOfClass:[NSString class]]) {
        return object;
    } else if ([object isKindOfClass:[NSNumber class]]) {
        return [object stringValue];
    } else {
        return @"";
    }
}

NSNumber *numberWithObject(id object) {
    
    if ([object isKindOfClass:[NSNumber class]]) {
        return object;
    } else if ([object isKindOfClass:[NSString class]]) {
        return [NSNumber numberWithString:object];
    } else {
        return nil;
    }
}

NSDictionary *dictionaryWithObject(id object) {
    if ([object isKindOfClass:[NSDictionary class]]) {
        return object;
    } else {
        return @{};
    }
}

NSArray *arrayWithObject(id object) {
    if ([object isKindOfClass:[NSArray class]]) {
        return object;
    } else {
        return @[];
    }
}

id objectInDictionaryForKey(NSDictionary *dictionary, id<NSCopying> key) {
    
    NSDictionary *_dictionary = dictionaryWithObject(dictionary);
    
    return [_dictionary objectForKey:key];
}

id objectInArrayAtIndex(NSArray *array, NSUInteger index) {
    
    NSArray *array_ = arrayWithObject(array);
    
    if ([array_ count] > index) {
        return [array_ objectAtIndex:index];
    } else {
        return nil;
    }
}

NSString *stringInArrayAtIndex(NSArray *array, NSUInteger index) {
    
    id object_ = objectInArrayAtIndex(array, index);
    return stringWithObject(object_);
}

NSNumber *numberInArrayAtIndex(NSArray *array, NSUInteger index) {
    
    id object_ = objectInArrayAtIndex(array, index);
    return numberWithObject(object_);
}

NSDictionary *dictionaryInArrayAtIndex(NSArray *array, NSUInteger index) {
    
    id object_ = objectInArrayAtIndex(array, index);
    return dictionaryWithObject(object_);
}

NSString *stringInDictionaryForKey(NSDictionary *dictionary, id<NSCopying> key) {
    
    id object_ = objectInDictionaryForKey(dictionary, key);
    return stringWithObject(object_);
}

NSNumber *numberInDictionaryForKey(NSDictionary *dictionary, id<NSCopying> key) {
    
    id object_ = objectInDictionaryForKey(dictionary, key);
    return numberWithObject(object_);
}

NSArray *arrayInDictionaryForKey(NSDictionary *dictionary, id<NSCopying> key) {
    
    id object_ = objectInDictionaryForKey(dictionary, key);
    return arrayWithObject(object_);
}

NSDictionary *dictionaryInDictionaryForKey(NSDictionary *dictionary, id<NSCopying> key) {
    
    id object_ = objectInDictionaryForKey(dictionary, key);
    return dictionaryWithObject(object_);
}

