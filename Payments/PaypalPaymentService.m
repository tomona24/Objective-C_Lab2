//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Tomona Sako on 2020/06/14.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (BOOL)canProcessPayment {
    int random = arc4random_uniform(2);
    return random == 0 ? NO : YES;
}

- (void)processPaymentAmount:(NSInteger *)amount {
    NSLog(@"Paypal processed amount $%ld", amount);
}

@end
