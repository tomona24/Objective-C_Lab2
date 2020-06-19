//
//  SecondManager.m
//  PizzaRestaurant-master
//
//  Created by Tomona Sako on 2020/06/18.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import "SecondManager.h"

@implementation SecondManager


- (BOOL)kitchen:(nonnull Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(nonnull NSArray *)toppings {
    return YES;
}

- (void)kitchenDidMakePizza:(nonnull Pizza *)pizza {
    NSLog(@"Thank you for your order! I upgraded the pizza!!");
    
    [self.ds deliverPizza:pizza];
}

- (BOOL)kitchenShouldUpgradeOrder:(nonnull Kitchen *)kitchen {
    return YES;
}

@end
