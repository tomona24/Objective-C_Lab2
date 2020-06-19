//
//  Sweater.h
//  PizzaRestaurant-master
//
//  Created by Tomona Sako on 2020/06/18.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
  Small,
  Medium,
  Large,
} PizzaSize;


@interface Pizza : NSObject

@property (assign) PizzaSize pizzaSize;
@property NSArray *toppings;

- (instancetype)initWithSize:(PizzaSize) pizzaSize topping: (NSArray *) topping;

+(Pizza *)largePepperoni;
+(Pizza *)meatLoversWithSize: (PizzaSize)size;

+ (PizzaSize)stringToSize: (NSString *)input;
- (NSString *)sizeToString: (PizzaSize)size;
@end

NS_ASSUME_NONNULL_END

