//
//  NSString+PigLatinization.m
//  Lab13
//
//  Created by Tomona Sako on 2020/06/10.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import "NSString+PigLatinization.h"

@implementation NSString (PigLatinization)

-(NSString *)stringByPigLatinization
{
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiouAEIOU"];
    NSCharacterSet *upperVowels = [NSCharacterSet characterSetWithCharactersInString:@"AEIOU"];
    NSCharacterSet *whitePunc = [NSCharacterSet characterSetWithCharactersInString:@" .,"];
    NSArray *words = [self componentsSeparatedByCharactersInSet:whitePunc];
    
    NSString *prefix;
    NSString *beforeAy;
    NSString *result = @"";
    for (int i = 0; i < words.count; i++)
    {
        NSRange range = [words[i] rangeOfCharacterFromSet:vowels];
        if(range.location == NSNotFound) {
            if([words[i] length] > 0){
                beforeAy = words[i];
                result = [result stringByAppendingString:[beforeAy stringByAppendingString:@"ay "]];
            }
        } else {
            prefix = [[words[i] substringWithRange:NSMakeRange(0, range.location)] lowercaseString];
            
            if ([upperVowels characterIsMember:[prefix characterAtIndex:0]]){
                beforeAy = [[words[i] substringFromIndex:range.location ] stringByAppendingString:prefix];
            } else {
                ;
                beforeAy =[[[words[i] substringWithRange:NSMakeRange(range.location, 1)] uppercaseString] stringByAppendingString: [[words[i] substringFromIndex:range.location + 1] stringByAppendingString:prefix]];
            }
            result = [result stringByAppendingString:[beforeAy stringByAppendingString:@"ay "]];
        }
    }
    return result;
}

@end
