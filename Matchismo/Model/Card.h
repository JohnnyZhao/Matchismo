//
//  Card.h
//  Matchismo
//
//  Created by Johnny Zhao on 11/15/13.
//  Copyright (c) 2013 Johnny Zhao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;

@end
