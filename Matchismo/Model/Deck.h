//
//  Deck.h
//  Matchismo
//
//  Created by Johnny Zhao on 11/17/13.
//  Copyright (c) 2013 Johnny Zhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayingCard.h"


@interface Deck : NSObject

- (void)addCard:(PlayingCard *)card atTop:(BOOL)atTop;
- (void)addCard:(PlayingCard *)card;
- (PlayingCard *)drawRandomCard;

@end