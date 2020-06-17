//
//  Cook2.m
//  Foodtruck
//
//  Created by Tomona Sako on 2020/06/11.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "Cook2.h"

@implementation Cook2

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food {
    if ([food  isEqual: @"shortbread"]) {
        return 7.0;
    } else if ([food isEqual: @"bao"]) {
        return 10.5;
    } else {
    return 3.0;
    }
}
@end
