//
//  Sweater.m
//  PizzaRestaurant-master
//
//  Created by Tomona Sako on 2020/06/18.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

+ (PizzaSize)stringToSize: (NSString *) userInput {
    PizzaSize size;
    NSString *input = [userInput lowercaseString];
//    if ([input isEqualToString:@"large"]) {
//        size = Large;
//    } else if([input isEqualToString:@"medium"]) {
//        size = Medium;
//    } else if([input isEqualToString:@"small"]) {
//        size = Small;
//    } else {
//        size = NO;
//    }
//
//    return size;
    return NO;
}


- (instancetype)initWithSize:(PizzaSize) pizzaSize: (NSArray *) toppings
{
    self = [super init];
    if (self) {
        _pizzaSize = pizzaSize;
        _toppings = toppings;
    }
    return self;
}


+(Pizza *)largePepperoni {
    NSArray *topping = [NSArray arrayWithObjects:@"Pineapple", @"Pepperoni", @"Sesami", nil];
    return [[self alloc] initWithSize:Large :topping];
}

+(Pizza *)meatLoversWithSize: (PizzaSize)size {
        NSArray *topping = [NSArray arrayWithObjects:@"Ham", @"Jalapeno", @"Sesami", nil];
    return [[self alloc] initWithSize:size :topping];
}

@end
