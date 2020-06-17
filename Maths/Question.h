//
//  AdditionQuestion.h
//  Maths
//
//  Created by Tomona Sako on 2020/06/09.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

@property (nonatomic, strong) NSString *question;
@property (nonatomic) NSInteger answer;
@property (nonatomic, strong)NSDate* startTime;
@property (nonatomic, strong) NSDate* endTime;

@property double rightValue;
@property double leftValue;
- (NSTimeInterval) answerTime;
- (void) generateQuestion;

@end

NS_ASSUME_NONNULL_END
