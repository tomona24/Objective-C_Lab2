//
//  QuestionFactory.h
//  Maths
//
//  Created by Tomona Sako on 2020/06/11.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : Question
- (Question *)generateRandomQuestion;
@end

NS_ASSUME_NONNULL_END
