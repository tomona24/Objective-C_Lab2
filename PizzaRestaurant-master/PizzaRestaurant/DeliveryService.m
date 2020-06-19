//
//  DeliveryService.m
//  PizzaRestaurant-master
//
//  Created by Tomona Sako on 2020/06/18.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService {
    DeliveryCar *_car;
    NSMutableArray *_pizzas;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _car = [[DeliveryCar alloc]init];
        _pizzas = [[NSMutableArray alloc]init];
    }
    return self;
}

- (void)deliverPizza:(Pizza *)pizza {
    [_pizzas addObject:pizza];
    [_car deliverPizza:pizza];
    NSLog(@"We delivered these %lu pizza so far:",  (unsigned long)[self.pizzaDescription count]);
}

- (NSMutableArray *)pizzaDescription{
    return _pizzas;
}


@end
