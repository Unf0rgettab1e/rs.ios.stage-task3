#import "LexicographicallyMinimal.h"

@interface LexicographicallyMinimal()

@property (nonatomic, strong) NSMutableString *resultString;

@end

@implementation LexicographicallyMinimal

-(NSString *)findLexicographicallyMinimalForString1:(NSString *)string1 andString2:(NSString *)string2 {
    
    NSMutableString *result = [NSMutableString new];
    NSMutableString *_string1 = [string1 mutableCopy], *_string2 = [string2 mutableCopy];
    
    while([_string1 length] && [_string2 length]){
        if([_string1 characterAtIndex:0] < [_string2 characterAtIndex:0]){
            
            [result appendString:[_string1 substringToIndex:1]];
            [_string1 setString:[_string1 substringFromIndex:1]];
            continue;
        }
        if([_string1 characterAtIndex:0] == [_string2 characterAtIndex:0]){
            if([_string1 length] >= 2)
                if([_string1 characterAtIndex:1] <= [_string2 characterAtIndex:0]){
                    [result appendString:[_string1 substringToIndex:1]];
                    [_string1 setString:[_string1 substringFromIndex:1]];
                    continue;
                }
        }
        [result appendString:[_string2 substringToIndex:1]];
        [_string2 setString:[_string2 substringFromIndex:1]];
    }
    [result appendString:_string1];
    [result appendString:_string2];
    
    return result;
}

@end
