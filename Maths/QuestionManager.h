//
//  QuestionManager.h
//  Maths
//
//  Created by Tomona Sako on 2020/06/10.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject
@property NSMutableArray * questions;
- (instancetype)init;
- (NSString *) timeOutput;

@end

NS_ASSUME_NONNULL_END
