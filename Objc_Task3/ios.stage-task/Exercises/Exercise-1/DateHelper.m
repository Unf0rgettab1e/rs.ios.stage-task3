#import "DateHelper.h"

@implementation DateHelper

#pragma mark - First

-(NSString *)monthNameBy:(NSUInteger)monthNumber {
    if(monthNumber == 0 || monthNumber > 12)
        return nil;
    NSDateFormatter *tempDateFormatter = [NSDateFormatter new];
    NSString *nameMonthByNumber = [tempDateFormatter monthSymbols][monthNumber - 1];
    return nameMonthByNumber;
}

#pragma mark - Second

- (long)dayFromDate:(NSString *)date {
    NSDateFormatter *inputDateForm = [NSDateFormatter new];
    inputDateForm.dateFormat = @"yyyy-MM-dd'T'HH:mm:ss'Z";
    NSInteger result = [[NSCalendar currentCalendar] component:NSCalendarUnitDay fromDate:[inputDateForm dateFromString:date]];
    return result;
}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
    NSDateComponents * components = [[NSCalendar currentCalendar] components:NSCalendarUnitWeekday fromDate:date];
    NSDateFormatter *dateFormatterWithLocale = [NSDateFormatter new];
    [dateFormatterWithLocale setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"ru_Ru"]];
    if([components weekday])
        return [dateFormatterWithLocale shortWeekdaySymbols][[components weekday] - 1];
    else
        return nil;
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    NSDateComponents * compInputDate = [[NSCalendar currentCalendar] components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitWeekOfMonth fromDate:date];
    NSDateComponents * compCurrentWeek = [[NSCalendar currentCalendar] components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitWeekOfMonth fromDate:[NSDate date]];
    return [compInputDate year] == [compCurrentWeek year] && [compInputDate month] == [compCurrentWeek month] && [compInputDate weekOfMonth] == [compCurrentWeek weekOfMonth];
}

@end
