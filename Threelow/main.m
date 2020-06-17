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
        
        NSString * userAnser = [InputHandler getUserInput:@"Enter your input :"];
        while ([userAnser  isEqual: @"roll"]) {
            
            if([userAnser  isEqual: @"reset"]) {
                [gc resetDice];
            }
            
            NSLog(@"Dice1: %@", [gc.dices[0] rollDice]);
//            NSLog(@"Dice2: %@", [d2 rollDice]);
//            NSLog(@"Dice3: %@", [d3 rollDice]);
//            NSLog(@"Dice4: %@", [d4 rollDice]);
//            NSLog(@"Dice5: %@", [d5 rollDice]);
            
            userAnser = [InputHandler getUserInput:@"Enter your input :"];
        }
        
        
    }
    return 0;
}
