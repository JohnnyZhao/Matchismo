//
//  PlayCardDeck.m
//  Matchismo
//
//  Created by Johnny Zhao on 11/17/13.
//  Copyright (c) 2013 Johnny Zhao. All rights reserved.
//

#import "PlayCardDeck.h"
#import "PlayingCard.h"

@implementation PlayCardDeck


- (instancetype)init
{
    self = [super init];
    
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for(NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    
    return self;
}











@end
