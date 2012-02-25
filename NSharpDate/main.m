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
        NSLog(@"stringToShortDate: %@",[date stringToShortDate]);
        NSLog(@"stringToShortTime: %@", [date stringToShortTime]);
        NSLog(@"Fulldate: %@", date);
    }
    return 0;
}

