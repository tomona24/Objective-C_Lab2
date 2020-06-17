//
//  Dice.m
//  Threelow
//
//  Created by Tomona Sako on 2020/06/16.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import "Dice.h"

@implementation Dice
- (void) rollDice{
    int random = arc4random_uniform(7);
    self.currentValue = random;
}
@end
