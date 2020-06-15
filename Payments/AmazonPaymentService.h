//
//  AmazonPaymentService.h
//  Payments
//
//  Created by Tomona Sako on 2020/06/14.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface AmazonPaymentService : NSObject <PaymentGatewayDelegate>;

@end

NS_ASSUME_NONNULL_END
