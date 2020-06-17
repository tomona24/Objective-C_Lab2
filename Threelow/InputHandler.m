//
//  InputHandler.m
//  Threelow
//
//  Created by Tomona Sako on 2020/06/16.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler
+ (NSString*) getUserInput:(NSString *)prompt {
    NSLog(@"%@ ", prompt);
    char inputChars[255];
    char *userInput = fgets(inputChars, 255, stdin);
    if (userInput != NULL) {
        return [[[NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[
                                                                                                NSCharacterSet whitespaceAndNewlineCharacterSet]]lowercaseString];
    }
    return NULL;
}
@end
