//
//  QuestionFactory.m
//  Maths
//
//  Created by Tomona Sako on 2020/06/11.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory
- (Question *)generateRandomQuestion {
    NSArray *questionSubClassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultipleQuestion", @"DivisionQuestion"];
    int rm = floor(arc4random_uniform([questionSubClassNames count]));
    return [[NSClassFromString(questionSubClassNames[rm]) alloc] init];
}
@end
