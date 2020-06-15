//
//  PaymentGateway.h
//  Payments
//
//  Created by Tomona Sako on 2020/06/14.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PaymentGateway;
@protocol PaymentGatewayDelegate <NSObject>

- (void) processPaymentAmount: (NSInteger *)amount;
- (BOOL) canProcessPayment;

@end

@interface PaymentGateway : NSObject
@property (nonatomic, weak) id<PaymentGatewayDelegate> delegate;

-(void) processPaymentAmount: (NSInteger *)amount;
@end


