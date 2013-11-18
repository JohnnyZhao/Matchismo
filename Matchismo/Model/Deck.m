//
//  Deck.m
//  Matchismo
//
//  Created by Johnny Zhao on 11/17/13.
//  Copyright (c) 2013 Johnny Zhao. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong, nonatomic) NSMutableArray *cards; // of Card;
@end

@implementation Deck

- (NSMutableArray *)cards
{   if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (void)addCard:(PlayingCard *)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    }
    else {
        [self.cards addObject:card];
    }
}

- (void)addCard:(PlayingCard *)card
{
    [self addCard:card atTop:NO];
}

- (PlayingCard *)drawRandomCard
{
    PlayingCard *randomCard = nil;
    
    if ([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    
    return randomCard;
}

@end