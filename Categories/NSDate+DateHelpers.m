//
//  NSDate+DateHelpers.m
//  NSharpDate
//
//  Created by Christian Engvall on 2012-02-21.
//  Copyright (c) 2012 Christian Engvall. All rights reserved.
//

#import "NSDate+DateHelpers.h"

@interface NSDate()
-(NSLocale *)getCurrentLocale;
-(NSDateFormatter *)getDateFormatter;
@end

@implementation NSDate (DateHelpers)



#pragma mark Properties

@dynamic Day;

-(NSInteger)Day
{
    NSDateFormatter *formatter = [self getDateFormatter];
    [formatter setDateFormat:@"dd"];
    
    NSString *dayOfMonth = [formatter stringFromDate:self];
    
    return [[formatter stringFromDate:self] intValue];
}

#pragma mark methods

-(NSString *)stringByShortDateFormat
{
    NSDateFormatter *formatter = [self getDateFormatter];
    [ formatter setDateStyle:NSDateFormatterShortStyle ];
    [ formatter setTimeStyle:NSDateFormatterNoStyle ];
    
    return [formatter stringFromDate:self];
}

-(NSString *)stringByShortTimeFormat
{
    NSDateFormatter *formatter = [self getDateFormatter];  
    [ formatter setDateStyle:NSDateFormatterNoStyle ];
    [ formatter setTimeStyle:NSDateFormatterMediumStyle ]; 
    
    return [formatter stringFromDate:self];
}

-(NSString *)stringByFormat:(NSString *)format
{
    NSDateFormatter *formatter = [self getDateFormatter];
    [formatter setDateFormat:format];
    
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
