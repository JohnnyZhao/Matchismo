//
//  PlayingCard.h
//  Matchismo
//
//  Created by Johnny Zhao on 11/17/13.
//  Copyright (c) 2013 Johnny Zhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
