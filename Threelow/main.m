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
        while (1) {
            
            if([userAnser  isEqual: @"reset"]) {
                [gc resetDice];
            }
            if([userAnser  isEqual: @"newgame"]) {
                [gc resetDice];
            }
            
            [gc rollDices];
            NSLog(@"The current score : %d", [gc calculateScore]);
            NSString *  userAnser = [InputHandler getUserInput:@"Enter which number do you want to hold or un-hold? :"];
            if (![userAnser isEqual:@""]) {
                if ([userAnser isEqual:@"roll"] && [gc rollCount] > 5) {
                    NSLog(@"You cannot roll any more without RESET!");
                    userAnser = [InputHandler getUserInput:@"Enter which number do you want to hold or un-hold? :"];
                }
                if ([userAnser isEqual:@"roll"] && [gc takenCount] == 0) {
                    NSLog(@"You need to choose at least one dice!");
                    userAnser = [InputHandler getUserInput:@"Enter which number do you want to hold or un-hold? :"];
                }
                while(!([userAnser isEqual:@"roll"] && [[gc heldDices]count] < 5)) {
                    [gc holdDie: [gc.dices[[userAnser intValue] -1] currentValue] : gc.dices[[userAnser intValue] -1]];
                    if ([[gc heldDices]count] == 5) {
                        break;
                    }
                    userAnser = [InputHandler getUserInput:@"Enter which number do you want to hold or un-hold? :"];
                }
                if ([[gc heldDices]count] == 5) {
                    break;
                }
            }
        }
        NSLog(@"Game set! Your final score was %d",  [gc calculateScore]);
    }
    
    return 0;
}
