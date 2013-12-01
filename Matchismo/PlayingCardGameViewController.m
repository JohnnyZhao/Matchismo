//
//  PlayingCardGameViewController.m
//  Matchismo
//
//  Created by Johnny Zhao on 12/1/13.
//  Copyright (c) 2013 Johnny Zhao. All rights reserved.
//

#import "PlayingCardGameViewController.h"
#import "PlayCardDeck.h"

@interface PlayingCardGameViewController ()

@end

@implementation PlayingCardGameViewController

- (Deck *)createDeck
{
    return [[PlayCardDeck alloc]init];
}
@end
