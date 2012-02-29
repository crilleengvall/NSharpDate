//
//  main.m
//  NSharpDate
//
//  Created by Christian Engvall on 2012-02-21.
//  Copyright (c) 2012 Christian Engvall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDate+DateHelpers.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *date = [NSDate date];
        NSLog(@"stringByShortDateFormat: %@",[date stringByShortDateFormat]);
        NSLog(@"stringByShortTimeFormat: %@", [date stringByShortTimeFormat]);
        NSLog(@"stringByLongDateFormat: %@", [date stringByLongDateFormat]);
        NSLog(@"stringByLongTimeFormat: %@", [date stringByLongTimeFormat]);
        NSLog(@"StringByFormat: %@", [date stringByFormat:@"MM"]);
        NSLog(@"Day property: %ld", date.Day);
        NSLog(@"DayOfWeek property: %@", date.DayOfWeek);
        NSLog(@"DayOfYear property: %ld", date.DayOfYear);
        NSLog(@"Hour property: %ld", date.Hour);
        NSLog(@"Milliseconds property: %ld", date.Milliseconds);
        NSLog(@"Minute property: %ld", date.Minute);
        NSLog(@"Month property: %ld", date.Month);
        NSLog(@"Second property: %ld", date.Second);
        NSLog(@"Full date before add: %@", date);
        
        NSDate *newDate = [date newDateByAddingDays:-11];
        NSLog(@"new date: %@", newDate);
        
        NSDate *newDate2 = [date newDateByAddingHours:-2];
        NSLog(@"New date 2: %@", newDate2);
        
        NSDate *newDate3 = [date newDateByAddingMinutes:-30];
        NSLog(@"New date 3: %@", newDate3);
        
        NSDate *newDate4 = [date newDateByAddingMonths:3];
        NSLog(@"New date 4: %@", newDate4);
        
        NSDate *newDate5 = [date newDateByAddingSeconds:10];
        NSLog(@"New date 5: %@", newDate5);
        
        NSDate *newDate6 = [date newDateByAddingYears:7];
        NSLog(@"New date 6: %@", newDate6);
    }
    return 0;
}

