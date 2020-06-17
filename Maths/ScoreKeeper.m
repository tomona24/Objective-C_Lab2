//
//  ScoreKeeper.m
//  Maths
//
//  Created by Tomona Sako on 2020/06/09.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init
{
    self = [super init];
    if (self) {
        _rightNum = 0;
        _wrongNum = 0;
    }
    return self;
}

- (void) writeResult {
    double total = self.rightNum + self.wrongNum;
    double ratio = (self.rightNum/total)*100;
    NSLog(@"total: %0.0f, ratio: %f ", total, ratio);
    NSLog(@"score: %0.0f right, %0.0f wrong ---- %0.0f%%", self.rightNum, self.wrongNum, ratio);
}

@end
