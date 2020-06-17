//
//  main.m
//  Threelow
//
//  Created by Tomona Sako on 2020/06/16.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        GameController *gc = [[GameController alloc]init];
        
        Dice *d1 = [[Dice alloc] init];
        Dice *d2 = [[Dice alloc] init];
        Dice *d3 = [[Dice alloc] init];
        Dice *d4 = [[Dice alloc] init];
        Dice *d5 = [[Dice alloc] init];
        Dice* dices[5] = {d1, d2,d3, d4, d5};
        gc.dices = dices;

        
        gc.storeDices = [NSMutableDictionary dictionaryWithCapacity:5];
        [gc.storeDices setObject:d1 forKey:@"d1"];
        [gc.storeDices setObject:d2 forKey:@"d2"];
        [gc.storeDices setObject:d3 forKey:@"d3"];
        [gc.storeDices setObject:d4 forKey:@"d4"];
        [gc.storeDices setObject:d5 forKey:@"d5"];
        
        
        NSString * userAnser = [InputHandler getUserInput:@"Enter your input :"];
        while ([userAnser  isEqual: @"roll"]) {
            
//            NSLog(@"Dice1: %@", [dices[0] rollDice]);
//            NSLog(@"Dice2: %@", [d2 rollDice]);
//            NSLog(@"Dice3: %@", [d3 rollDice]);
//            NSLog(@"Dice4: %@", [d4 rollDice]);
//            NSLog(@"Dice5: %@", [d5 rollDice]);
            
            userAnser = [InputHandler getUserInput:@"Enter your input :"];
        }
        
        
    }
    return 0;
}
