//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    Pizza *pizza;
    if(self.delegate != NULL) {
        if([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
            if( [self.delegate kitchenShouldUpgradeOrder:self]) {
                size = Large;
            }
            pizza = [[Pizza alloc] initWithSize:size topping:toppings];
            [self.delegate kitchenDidMakePizza:pizza];
        }else {
            pizza = NULL;
        }}else {
            NSLog(@"Delegate is NULL");
            pizza = [[Pizza alloc] initWithSize:size topping:toppings];
        }
    return pizza;
}



@end
