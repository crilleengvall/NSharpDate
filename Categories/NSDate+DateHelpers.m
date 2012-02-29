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

@dynamic Day, DayOfWeek, DayOfYear, Hour, Milliseconds, Minute, Month, Second;

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

-(NSInteger)Month
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dateComponets = [calendar components:NSMonthCalendarUnit fromDate:self];
    
    NSInteger month = [dateComponets month];
    
    return month;
}

-(NSInteger)Second
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dateComponents = [calendar components:NSSecondCalendarUnit fromDate:self];
    
    NSInteger second = [dateComponents second];
    
    return second;
}

#pragma mark methods

-(NSDate *)newDateByAddingDays:(NSInteger)days
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dateComponents = [[NSDateComponents alloc]init];
    [dateComponents setDay:days];
    
    return [calendar dateByAddingComponents:dateComponents toDate:self options:0];
}

-(NSDate *)newDateByAddingHours:(NSInteger)hours
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    [dateComponents setHour:hours];
    
    return [calendar dateByAddingComponents:dateComponents toDate:self options:0];
}

-(NSDate *)newDateByAddingMinutes:(NSInteger)minutes
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dateComponets = [[NSDateComponents alloc]init];
    [dateComponets setMinute:minutes];
    
    return [calendar dateByAddingComponents:dateComponets toDate:self options:0];
}

-(NSDate *)newDateByAddingMonths:(NSInteger)months
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dateComponents = [[NSDateComponents alloc]init];
    [dateComponents setMonth:months];
    
    return [calendar dateByAddingComponents:dateComponents toDate:self options:0];
}

-(NSDate *)newDateByAddingSeconds:(NSInteger)seconds
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dateComponents = [[NSDateComponents alloc]init];
    [dateComponents setSecond:seconds];
    
    return [calendar dateByAddingComponents:dateComponents toDate:self options:0];
}

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
