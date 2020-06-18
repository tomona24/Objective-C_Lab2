//
//  Sweater.m
//  PizzaRestaurant-master
//
//  Created by Tomona Sako on 2020/06/18.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
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



typedef NS_ENUM(unsigned char, ToppingType) {
  Ham,
  Pineapple,
  Sesami,
  Jalapeno,
};


//- (NSString *)description {
//  switch (_pizzaSize) {
//    case Large:
//      return @"Large";
//    case Medium:
//      return @"Middle";
//    case Small:
//      return @"Small";
//  }
//}

+(instancetype)largePepperoni {
    NSArray* topping = @[@(Pineapple), @(Jalapeno), @(Sesami)];
    return [[self alloc] initWithSize:Large :topping];
}

+(instancetype)meatLoversWithSize: (PizzaSize)size {
    NSArray* topping = @[@(Ham), @(Jalapeno), @(Sesami)];
    return [[self alloc] initWithSize:size :topping];
}

@end
