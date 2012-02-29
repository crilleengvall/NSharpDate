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

@dynamic Day, DayOfWeek, DayOfYear, Hour, Milliseconds, Minute;

-(NSInteger)Day
{
    NSDateFormatter *formatter = [self getDateFormatter];
    [formatter setDateFormat:@"dd"];

    return [[formatter stringFromDate:self] intValue];
}

-(NSString *)DayOfWeek
{
    NSDateFormatter *formatter = [self getDateFormatter];
    [formatter setDateFormat:@"EEEE"];
    
    return [formatter stringFromDate:self];
}

-(NSInteger)DayOfYear
{
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSInteger dayOfYear = [calendar ordinalityOfUnit:NSDayCalendarUnit inUnit:NSYearCalendarUnit forDate: self];
    
    return dayOfYear;
}

-(NSInteger)Hour
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    NSDateComponents *dateComponents = [calendar components:NSHourCalendarUnit fromDate:self];
    NSInteger hour = [dateComponents hour];
    
    return hour;
}

-(NSInteger)Milliseconds
{
    NSDateFormatter *formatter = [self getDateFormatter];
    [formatter setDateFormat:@"SSS"];
    
    return [[formatter stringFromDate:self]intValue];
}

-(NSInteger)Minute
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    NSDateComponents *dateComponents = [calendar components:NSMinuteCalendarUnit fromDate:self];
    NSInteger minute = [dateComponents minute];
    
    return minute;
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
