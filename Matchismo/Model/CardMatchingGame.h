//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Johnny Zhao on 11/18/13.
//  Copyright (c) 2013 Johnny Zhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

- (instancetype)initWithCardCount:(NSUInteger)count
                        usingDeck:(Deck *)deck;

- (void)chooseCardAtIndex:(NSUInteger)index;
- (Card *)cardAtIndex:(NSUInteger)index;


@property (nonatomic, readonly) NSInteger score;


@end
