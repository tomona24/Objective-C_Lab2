//
//  GameController.m
//  Threelow
//
//  Created by Tomona Sako on 2020/06/16.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import "GameController.h"

@implementation GameController
- (instancetype)init
{
    self = [super init];
    if (self) {
        Dice *d1 = [[Dice alloc] init];
        Dice *d2 = [[Dice alloc] init];
        Dice *d3 = [[Dice alloc] init];
        Dice *d4 = [[Dice alloc] init];
        Dice *d5 = [[Dice alloc] init];
        _dices = @[d1, d2, d3, d4, d5];
        _heldDices = [[NSMutableDictionary alloc] init];
    }
    return self;
}
-(void)cheatRoll {
        self.takenCount = 0;
    for (Dice *dice in self.dices) {
        long num = [self.dices indexOfObject:dice];
        if (self.heldDices[[NSString stringWithFormat: @"%ld", [self.dices indexOfObject:dice]]] == NULL) {
            NSLog(@"Dice%d : %@", num + 1, [dice rollDiceCheatly]);
        }
    }
    self.rollCount ++;
}

-(void)rollDices {
    self.takenCount = 0;
    for (Dice *dice in self.dices) {
        long num = [self.dices indexOfObject:dice];
        if (self.heldDices[[NSString stringWithFormat: @"%ld", [self.dices indexOfObject:dice]]] == NULL) {
            NSLog(@"Dice%d : %@", num + 1, [dice rollDice]);
        }
    }
    self.rollCount ++;
}

-(void)holdDie:(NSInteger *)value :(Dice *) dice {
    NSString *num = [NSString stringWithFormat: @"%ld", [self.dices indexOfObject:dice]];
    if (self.heldDices[num] == NULL) {
        [self.heldDices setObject:[NSNumber numberWithInt: value] forKey: num];
        self.takenCount ++;
    } else {
        [self.heldDices removeObjectForKey: num];
    }
}
-(void)resetDice {
    self.rollCount = 0;
    [self.heldDices removeAllObjects];
}

-(int)calculateScore {
    int score = 0 ;
    for (Dice *dice in self.dices) {
        score = score + (int)dice.currentValue;
    }
    return score;
}



@end
