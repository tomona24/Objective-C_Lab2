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
        _heldDices = [NSMutableDictionary dictionaryWithCapacity:5];
        
    }
    return self;
}

-(void)holdDie:(NSInteger *)value :(Dice *) dice {
    long num = [self.dices indexOfObject:dice];
    if (num == -1) {
    [self.heldDices setObject:[NSNumber numberWithInt: value] forKey: [NSString stringWithFormat: @"%ld", num]];
    } else {
        [self.heldDices removeObjectForKey: [NSString stringWithFormat: @"%ld", num]];
    }
}
-(void)resetDice {
    [self.heldDices removeAllObjects];
}
@end
