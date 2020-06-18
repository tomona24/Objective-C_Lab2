//
//  Sweater.h
//  PizzaRestaurant-master
//
//  Created by Tomona Sako on 2020/06/18.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, PizzaSize) {
  Small,
  Medium,
  Large,
};

//typedef NS_ENUM(unsigned char, ToppingType) {
//  Ham,
//  Pineapple,
//  Sesami,
//  Jalapeno,
//};

@interface Pizza : NSObject

@property (assign) PizzaSize pizzaSize;
@property NSArray *toppings;

- (instancetype)initWithSize:(PizzaSize) pizzaSize: (NSArray *) topping;

+(instancetype)largePepperoni;
+(instancetype)meatLoversWithSize: (PizzaSize)size;


@end

NS_ASSUME_NONNULL_END

