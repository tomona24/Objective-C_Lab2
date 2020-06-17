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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dice *d1 = [[Dice alloc] init];
        Dice *d2 = [[Dice alloc] init];
        Dice *d3 = [[Dice alloc] init];
        Dice *d4 = [[Dice alloc] init];
        Dice *d5 = [[Dice alloc] init];
        
        
        NSString * userAnser = [InputHandler getUserInput:@"Enter your input :"];
        while ([userAnser  isEqual: @"roll"]) {
            
            NSLog(@"%@", [d1 rollDice]);
            NSLog(@"%@", [d2 rollDice]);
            NSLog(@"%@", [d3 rollDice]);
            NSLog(@"%@", [d4 rollDice]);
            NSLog(@"%@", [d5 rollDice]);

            userAnser = [InputHandler getUserInput:@"Enter your input :"];
        }
        
        
    }
    return 0;
}
