//
//  MultipleQuestion.m
//  Maths
//
//  Created by Tomona Sako on 2020/06/11.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import "MultipleQuestion.h"

@implementation MultipleQuestion
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion
{
    self.answer = self.leftValue * self.rightValue;
    self.question = [NSString stringWithFormat:@"%0.0f X %0.0f ?", self.leftValue, self.rightValue];
}

@end
