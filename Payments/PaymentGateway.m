//
//  PaymentGateway.m
//  Payments
//
//  Created by Tomona Sako on 2020/06/14.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void) processPaymentAmount: (NSInteger *)amount {
    if ([self.delegate canProcessPayment]) {
        [self.delegate processPaymentAmount: amount];
    } else {
        NSLog(@"Sorry, the payment method cannnot be processed.");
    }
}

@end
