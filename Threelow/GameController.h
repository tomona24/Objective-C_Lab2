//
//  GameController.h
//  Threelow
//
//  Created by Tomona Sako on 2020/06/16.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject
@property (weak) NSArray *dices;
@property NSMutableDictionary *heldDices;
@property int takenCount;
@property int rollCount;
-(instancetype)init;
-(void)holdDie: (NSInteger *)value : (Dice *)dice;
-(void)resetDice;
-(int)calculateScore;
-(void)rollDices;
-(void)cheatRoll;

@end

NS_ASSUME_NONNULL_END
