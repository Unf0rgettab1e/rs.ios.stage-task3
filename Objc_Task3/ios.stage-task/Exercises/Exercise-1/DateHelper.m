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
    return nil;
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    return NO;
}

@end
