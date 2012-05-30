#import <Foundation/Foundation.h>

@interface NSDate (NSharpDate)

@property NSInteger Day;
@property (nonatomic, copy) NSString *DayOfWeek;
@property NSInteger DayOfYear;
@property NSInteger Hour;
@property NSInteger Milliseconds;
@property NSInteger Minute;
@property NSInteger Month;
@property NSInteger Second;

-(NSDate *)newDateByAddingDays:(NSInteger) days;

-(NSDate *)newDateByAddingHours:(NSInteger) hours;

-(NSDate *)newDateByAddingMinutes:(NSInteger) minutes;

-(NSDate *)newDateByAddingMonths:(NSInteger) months;

-(NSDate *)newDateByAddingSeconds:(NSInteger) seconds;

-(NSDate *)newDateByAddingYears:(NSInteger) years;

-(NSString *)stringByFormat:(NSString *) format;

-(NSString *)stringByLongDateFormat;

-(NSString *)stringByLongTimeFormat;

-(NSString *)stringByShortDateFormat;

-(NSString *)stringByShortTimeFormat;

@end
