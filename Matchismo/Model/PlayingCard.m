//
//  PlayingCard.m
//  Matchismo
//
//  Created by Johnny Zhao on 11/17/13.
//  Copyright (c) 2013 Johnny Zhao. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

-(int)match:(NSArray *)otherCards
{
    int score = 0;
    if([otherCards count] == 1) {
        id card = [otherCards firstObject];
        if ([card isMemberOfClass:[PlayingCard class]]) {
            
            PlayingCard *otherCard = [otherCards firstObject];
            if ([self.suit isEqualToString:otherCard.suit]) {
                score = 1;
            } else if  (self.rank == otherCard.rank){
                score = 4;
            }
        }
    }
    NSLog(@"get score: %d", score);
    return score;
}

- (NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    NSString *contents = [NSString stringWithFormat:@"%@%@", rankStrings[self.rank], self.suit];
    NSLog(@"%@", contents);
    return [NSString stringWithFormat:@"%@%@", rankStrings[self.rank], self.suit];
}

@synthesize suit = _suit;
+ (NSArray *)validSuits{
    return @[@"♥︎", @"♣︎", @"♦︎", @"♠︎"];
}
- (void) setSuit:(NSString *)suit{
    if ([[PlayingCard validSuits]  containsObject:suit]){
        _suit = suit;
    }
}
- (NSString *)suit{
    return _suit ? _suit : @"?";
}

+ (NSArray *)rankStrings
{
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger)maxRank
{
    return [[self rankStrings ]count] -1;
}

- (void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]){
        _rank = rank;
    }
}

@end
