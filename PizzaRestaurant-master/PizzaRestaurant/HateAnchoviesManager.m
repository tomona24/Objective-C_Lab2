//
//  HateAnchoviesManager.m
//  PizzaRestaurant-master
//
//  Created by Tomona Sako on 2020/06/18.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import "HateAnchoviesManager.h"

@implementation HateAnchoviesManager

- (BOOL)kitchen:(nonnull Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(nonnull NSArray *)toppings {
    if ([toppings containsObject:@"anchovies"] || [toppings containsObject:@"Anchovies"]) {
        return NO;
    }
    return YES;
}

- (void)kitchenDidMakePizza:(nonnull Pizza *)pizza {
    
}

- (BOOL)kitchenShouldUpgradeOrder:(nonnull Kitchen *)kitchen {
    return NO;
}

@end
