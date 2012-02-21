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
    NSString *date = [formatter stringFromDate:self];
    
    return date;
}

@end
