//
//  DeliveryCar.h
//  PizzaRestaurant-master
//
//  Created by Tomona Sako on 2020/06/18.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
NS_ASSUME_NONNULL_BEGIN

@interface DeliveryCar : NSObject
-(void) deliverPizza:(Pizza *)pizza;
@end

NS_ASSUME_NONNULL_END
