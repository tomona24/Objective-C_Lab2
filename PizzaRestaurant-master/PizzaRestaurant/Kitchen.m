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
            
        }else {
            pizza = NULL;
        }
    }
    else {
        pizza = [[Pizza alloc] initWithSize:size topping:toppings];
    }
    
    if (pizza == NULL) {
        NSLog(@"Sorry, the chef denied your order");
    } else {
        NSLog(@"%@", [pizza description]);
        if([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
            [self.delegate kitchenDidMakePizza:pizza];
        }
    }
    return pizza;
}



@end
