//
//  main.m
//  Payments
//
//  Created by Tomona Sako on 2020/06/14.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "AmazonPaymentService.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        int *rNum = arc4random_uniform(1001) + 100;
        NSLog(@"Thank you for shopping at Acme.com Your total today is $xxx Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4: Apple");
        
        char inputChars[255];
        char *userInput = fgets(inputChars, 255, stdin);
        int userInputInt = [[[NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] intValue];
        
        PaymentGateway *pg = [[PaymentGateway alloc]init];
        NSString *questionSubClassNames;
        switch (userInputInt) {
            case 1: {
                questionSubClassNames = @"PaypalPaymentService";
                break;
            };
            case 2: {
                questionSubClassNames = @"StripePaymentService";
                
                break;
            };
            case 3:{
                questionSubClassNames = @"AmazonPaymentService";
                break;
            };
            case 4:{
                questionSubClassNames = @"ApplePaymentService";
                break;
            };
            default:
                break;
        };
        NSLog(@"input %d", userInputInt);
        PaymentGateway *delegateClass = [[NSClassFromString(questionSubClassNames) alloc] init];
        pg.delegate = delegateClass;
        [pg processPaymentAmount: rNum];
    }
    return 0;
}
