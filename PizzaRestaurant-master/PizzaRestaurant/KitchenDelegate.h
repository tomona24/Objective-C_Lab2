//
//  KitchenDelegate.h
//  PizzaRestaurant-master
//
//  Created by Tomona Sako on 2020/06/18.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryService.h"

@class Kitchen;

NS_ASSUME_NONNULL_BEGIN

@protocol KichenDelegate <NSObject>

@property (nonatomic ,weak)DeliveryService * ds;
-(BOOL) kitchen: (Kitchen *) kitchen shouldMakePizzaOfSize: (PizzaSize)size andToppings:(NSArray *)toppings;
-(BOOL) kitchenShouldUpgradeOrder: (Kitchen *) kitchen;
-(void) kitchenDidMakePizza: (Pizza *)pizza;

@end

@interface KitchenDelegate : NSObject

@end

NS_ASSUME_NONNULL_END
