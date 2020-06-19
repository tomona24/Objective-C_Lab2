//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"
#import "HateAnchoviesManager.h"
#import "SecondManager.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        HateAnchoviesManager *firstManager = [[HateAnchoviesManager alloc]init];
        SecondManager *secondManager = [[SecondManager alloc]init];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            
            Pizza *pizza;
            NSString *firstInput = commandWords[0];
            if([firstInput isEqualToString:@"pepperoni"]) {
                pizza = [Pizza largePepperoni];
            } else {
            
                // choose Manager
                NSLog(@"Which manager do you want to create your pizza? Type the number.");
                NSLog(@"1. Chief Manager");
                NSLog(@"2. Assistant Manager");
                NSLog(@"3. Other");
                NSLog(@"> ");
                char str2[255];
                fgets (str2, 255, stdin);
                inputString = [[[NSString alloc] initWithUTF8String:str2]stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
                NSLog(@"User input was %@", inputString);
                if ([inputString isEqualToString: @"1"]) {
                    restaurantKitchen.delegate = firstManager;
                } else if ([inputString isEqualToString: @"2"]) {
                    restaurantKitchen.delegate = secondManager;
                } else {
                    restaurantKitchen.delegate = NULL;
                }
                
                PizzaSize size = [Pizza stringToSize: firstInput];
                NSRange topping;
                topping.location = 1;
                topping.length = [commandWords count] - 1;
                
                pizza = [restaurantKitchen makePizzaWithSize: size toppings:[commandWords subarrayWithRange:topping]];
            }
            if (pizza == NULL) {
            NSLog(@"Sorry, the chef denied your order");
            } else {
            NSLog(@"%@", [pizza description]);
            }
            // And then send some message to the kitchen...
            
        }
        
    }
    return 0;
}

