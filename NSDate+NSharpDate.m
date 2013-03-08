#import "NSDate+NSharpDate.h"

@implementation NSDate (NSharpDate)

#pragma mark Properties

@dynamic day, dayOfWeek, dayOfYear, hour, milliseconds, minute, month, second;

-(NSInteger)day
{
    NSDateFormatter *formatter = [self dateFormatter];
    [formatter setDateFormat:@"dd"];
    return [[formatter stringFromDate:self] intValue];
}

-(NSString *)dayOfWeek
{
    NSDateFormatter *formatter = [self dateFormatter];
    [formatter setDateFormat:@"EEEE"];
    return [formatter stringFromDate:self];
}

-(NSInteger)dayOfYear
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSInteger dayOfYear = [calendar ordinalityOfUnit:NSDayCalendarUnit inUnit:NSYearCalendarUnit forDate: self];
    return dayOfYear;
}

-(NSInteger)hour
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dateComponents = [calendar components:NSHourCalendarUnit fromDate:self];
    NSInteger hour = [dateComponents hour];
    return hour;
}

-(NSInteger)milliseconds
{
    NSDateFormatter *formatter = [self dateFormatter];
    [formatter setDateFormat:@"SSS"];
    return [[formatter stringFromDate:self]intValue];
}

-(NSInteger)minute
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dateComponents = [calendar components:NSMinuteCalendarUnit fromDate:self];
    NSInteger minute = [dateComponents minute];
    return minute;
}

-(NSInteger)month
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dateComponets = [calendar components:NSMonthCalendarUnit fromDate:self];
    NSInteger month = [dateComponets month];
    return month;
}

-(NSInteger)second
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

-(NSDate *)newDateByAddingYears:(NSInteger)years
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    [dateComponents setYear:years];
    return [calendar dateByAddingComponents:dateComponents toDate:self options:0];
}

-(NSString *)stringByFormat:(NSString *)format
{
    NSDateFormatter *formatter = [self dateFormatter];
    [formatter setDateFormat:format];
    return [formatter stringFromDate:self];
}

-(NSString *)stringByLongDateFormat
{
    NSDateFormatter *formatter = [self dateFormatter];
    [formatter setDateStyle:NSDateFormatterFullStyle];
    [formatter setTimeStyle:NSDateFormatterNoStyle];
    return [formatter stringFromDate:self];
}

-(NSString *)stringByLongTimeFormat
{
    NSDateFormatter *formatter = [self dateFormatter];
    [formatter setDateStyle:NSDateFormatterNoStyle];
    [formatter setTimeStyle:NSDateFormatterFullStyle];
    return [formatter stringFromDate:self];
}

-(NSString *)stringByShortDateFormat
{
    NSDateFormatter *formatter = [self dateFormatter];
    [formatter setDateStyle:NSDateFormatterShortStyle];
    [formatter setTimeStyle:NSDateFormatterNoStyle];
    return [formatter stringFromDate:self];
}

-(NSString *)stringByShortTimeFormat
{
    NSDateFormatter *formatter = [self dateFormatter];  
    [formatter setDateStyle:NSDateFormatterNoStyle];
    [formatter setTimeStyle:NSDateFormatterMediumStyle]; 
    return [formatter stringFromDate:self];
}

-(NSInteger)monthsSince:(NSDate *)aDate
{
    NSUInteger flags = NSMonthCalendarUnit;
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [calendar components:flags fromDate:aDate toDate:self options:0];
    return [components month];
}

-(NSInteger)monthsTo:(NSDate *)aDate
{
    NSUInteger flags = NSMonthCalendarUnit;
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [calendar components:flags fromDate:self toDate:aDate options:0];
    return [components month];
}

-(NSLocale *)currentLocale
{
    NSString *currentLocalIdentifier = [[NSLocale currentLocale] localeIdentifier];
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:currentLocalIdentifier];
    return locale;
}

-(NSDateFormatter *)dateFormatter
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    return formatter;
}

@end