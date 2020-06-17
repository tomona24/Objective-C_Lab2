//
//  AdditionQuestion.m
//  Maths
//
//  Created by Tomona Sako on 2020/06/09.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import "Question.h"

@implementation Question
- (instancetype)init
{
    self = [super init];
    if (self) {
          _leftValue = (NSInteger)arc4random_uniform(90) + 10;
          _rightValue= (NSInteger)arc4random_uniform(90) + 10;
        _startTime = [NSDate date];
    }
    return self;
}

// overriding getter
- (NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval) answerTime
{
    NSTimeInterval dif = [self.endTime timeIntervalSinceDate: self.startTime];
    return dif;
}
- (void) generateQuestion
{
    
}

@end
