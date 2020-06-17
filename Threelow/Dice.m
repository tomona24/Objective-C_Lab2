//
//  Dice.m
//  Threelow
//
//  Created by Tomona Sako on 2020/06/16.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import "Dice.h"

@implementation Dice
- (NSString *) rollDice{
    int random = arc4random_uniform(6) + 1;
    self.currentValue = (long)random;
    switch (random) {
        case 1:
            return @"⚀";
            break;
        case 2:
            return @"⚁";
            break;
        case 3:
            return @"⚂";
            break;
        case 4:
            return @"⚃";
            break;
        case 5:
            return @"⚄";
            break;
        case 6:
            return @"⚅";
            break;
        default:
            return NULL;
            break;
    }
}

- (NSString *) rollDiceCheatly {
    self.currentValue = 1;
        return @"⚀";
}
@end
