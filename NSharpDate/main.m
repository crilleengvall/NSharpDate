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
        NSLog(@"stringToShortDate: %@",[date stringByShortDateFormat]);
        NSLog(@"stringToShortTime: %@", [date stringByShortTimeFormat]);
        NSLog(@"StringByFormat: %@", [date stringByFormat:@"MM"]);
        NSLog(@"Day property: %ld", date.Day);
        NSLog(@"DayOfWeek property: %@", date.DayOfWeek);
        NSLog(@"DayOfYear property: %ld", date.DayOfYear);
        NSLog(@"Hour property: %ld", date.Hour);
        NSLog(@"Milliseconds property: %ld", date.Milliseconds);
        NSLog(@"Minute property: %ld", date.Minute);
        NSLog(@"Month property: %ld", date.Month);
        NSLog(@"Second property: %ld", date.Second);
        
        NSLog(@"Full date: %@", date);
    
    }
    return 0;
}

