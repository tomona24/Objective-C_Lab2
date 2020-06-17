//
//  QuestionManager.m
//  Maths
//
//  Created by Tomona Sako on 2020/06/10.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import "QuestionManager.h"


@implementation QuestionManager
- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString *) timeOutput
{
    double total = 0.0;
    for (int i = 0; i < [self.questions count]; i++) {
        Question *nowQuiz = self.questions[i];
        total +=  [nowQuiz answerTime];
    }
    double avg = floor(total / [self.questions count]);

    return [NSString stringWithFormat: @"total time: %0.0fs, average time: %0.0fs", floor(total), avg];
}

@end
