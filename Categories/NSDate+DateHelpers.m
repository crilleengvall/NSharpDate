//
//  NSDate+DateHelpers.m
//  NSharpDate
//
//  Created by Christian Engvall on 2012-02-21.
//  Copyright (c) 2012 Christian Engvall. All rights reserved.
//

#import "NSDate+DateHelpers.h"

@implementation NSDate (DateHelpers)

-(NSString *)stringToShortDate
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    
    return [formatter stringFromDate:self];
}

-(NSString *)stringToShortTime
{
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:[[NSLocale currentLocale] localeIdentifier]];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setLocale:locale];  
    [dateFormatter setDateFormat:@"HH:mm:ss"];  
    
    return [dateFormatter stringFromDate:self];
}


@end
