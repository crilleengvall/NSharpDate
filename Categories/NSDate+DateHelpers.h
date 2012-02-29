//
//  NSDate+DateHelpers.h
//  NSharpDate
//
//  Created by Christian Engvall on 2012-02-21.
//  Copyright (c) 2012 Christian Engvall. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (DateHelpers)

@property NSInteger Day;
@property NSInteger DayOfYear;
@property NSInteger Hour;
@property NSInteger Milliseconds;
@property NSInteger Minute;
@property (nonatomic, copy) NSString *DayOfWeek;

-(NSString *)stringByShortDateFormat;

-(NSString *)stringByShortTimeFormat;

-(NSString *)stringByFormat:(NSString *) format;

@end
