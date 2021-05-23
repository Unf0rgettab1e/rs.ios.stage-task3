#import "PlayersSeparator.h"

@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {
    NSInteger countTeams = 0, countRatArr = [ratingArray count];
    
    for(NSInteger i = 0; i < countRatArr - 2; i++){
        for (NSInteger j = i + 1; j < countRatArr - 1; j++) {
            for (NSInteger k = j + 1; k < countRatArr; k++) {
                NSInteger ratI = [ratingArray[i] integerValue],
                ratJ = [ratingArray[j] integerValue],
                ratK = [ratingArray[k] integerValue];
                if(((ratI > ratJ) && (ratJ > ratK)) || ((ratI < ratJ) && (ratJ < ratK)))
                    countTeams++;
            }
        }
    }
    return countTeams;
}

@end
