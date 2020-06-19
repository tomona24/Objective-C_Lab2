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
    if(self.delegate != NULL) {
        Pizza *pizza;
        if([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
            
            if( [self.delegate kitchenShouldUpgradeOrder:self]) {
               pizza = [Pizza largePepperoni];
            } else {
                pizza = [[Pizza alloc] initWithSize:size :toppings];
            }
        }else {
            pizza = NULL;
        }
        
        [self.delegate kitchenDidMakePizza:pizza];
        return pizza;
    }
    return NULL;
}



@end
