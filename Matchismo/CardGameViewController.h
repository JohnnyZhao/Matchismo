//
//  CardGameViewController.h
//  Matchismo
//
//  Created by Johnny Zhao on 11/15/13.
//  Copyright (c) 2013 Johnny Zhao. All rights reserved.
//
// Abstrct class. Must implement methods as described below


#import <UIKit/UIKit.h>
#import "Deck.h"

@interface CardGameViewController : UIViewController


// protected
// for subclass
- (Deck *)createDeck; // Abstract

@end
