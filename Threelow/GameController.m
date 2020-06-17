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
        _heldDices = []
            
        }
    }
    return self;
}
@end
