//
//  NSDate+DateHelpers.m
//  NSharpDate
//
//  Created by Christian Engvall on 2012-02-21.
//  Copyright (c) 2012 Christian Engvall. All rights reserved.
//

#import "NSDate+DateHelpers.h"

@interface NSDate () 
-(NSLocale *)getCurrentLocale;
-(NSDateFormatter *)getDateFormatter;
@end

@implementation NSDate (DateHelpers)

-(NSString *)stringToShortDate
{
    NSDateFormatter *formatter = [self getDateFormatter];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    
    return [formatter stringFromDate:self];
}

-(NSString *)stringToShortTime
{
    NSDateFormatter *formatter = [self getDateFormatter];  
    [formatter setDateFormat:@"HH:mm:ss"];  
    
    return [formatter stringFromDate:self];
}

-(NSLocale *)getCurrentLocale
{
    NSString *currentLocalIdentifier = [[NSLocale currentLocale] localeIdentifier];
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:currentLocalIdentifier];
    
    return locale;
}

-(NSDateFormatter *)getDateFormatter
{
    NSLocale *locale = [self getCurrentLocale];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setLocale:locale];
    
    return formatter;
}

@end
