//
//  NSDate+NSharpDate.h
//  NSharpDate
//
//  Created by Christian Engvall on 2012-02-21.
//  Copyright (c) 2012 Christian Engvall. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (NSharpDate)

@property NSInteger Day;
@property NSInteger DayOfYear;
@property NSInteger Hour;
@property NSInteger Milliseconds;
@property NSInteger Minute;
@property NSInteger Month;
@property NSInteger Second;
@property (nonatomic, copy) NSString *DayOfWeek;

-(NSString *)stringByShortDateFormat;

-(NSString *)stringByShortTimeFormat;

-(NSString *)stringByFormat:(NSString *) format;

-(NSString *)stringByLongDateFormat;

-(NSString *)stringByLongTimeFormat;

-(NSDate *)newDateByAddingDays:(NSInteger) days;

-(NSDate *)newDateByAddingHours:(NSInteger) hours;

-(NSDate *)newDateByAddingMinutes:(NSInteger) minutes;

-(NSDate *)newDateByAddingMonths:(NSInteger) months;

-(NSDate *)newDateByAddingSeconds:(NSInteger) seconds;

-(NSDate *)newDateByAddingYears:(NSInteger) years;

@end