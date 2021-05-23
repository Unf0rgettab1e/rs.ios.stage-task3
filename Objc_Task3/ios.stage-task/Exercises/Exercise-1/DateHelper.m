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
    return 0;
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
