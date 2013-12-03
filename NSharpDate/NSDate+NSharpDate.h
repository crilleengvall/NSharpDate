#import <Foundation/Foundation.h>

@interface NSDate (NSharpDate)

@property (nonatomic, copy) NSString *dayOfWeek;
@property NSInteger day;
@property NSInteger dayOfYear;
@property NSInteger hour;
@property NSInteger milliseconds;
@property NSInteger minute;
@property NSInteger month;
@property NSInteger second;

-(NSDate *)newDateByAddingDays:(NSInteger)days;
-(NSDate *)newDateByAddingHours:(NSInteger)hours;
-(NSDate *)newDateByAddingMinutes:(NSInteger)minutes;
-(NSDate *)newDateByAddingMonths:(NSInteger)months;
-(NSDate *)newDateByAddingSeconds:(NSInteger)seconds;
-(NSDate *)newDateByAddingYears:(NSInteger)years;
-(NSInteger)monthsSince:(NSDate *)aDate;
-(NSInteger)monthsTo:(NSDate *)aDate;
-(NSString *)stringByFormat:(NSString *)format;
-(NSString *)stringByLongDateFormat;
-(NSString *)stringByLongTimeFormat;
-(NSString *)stringByShortDateFormat;
-(NSString *)stringByShortTimeFormat;

@end