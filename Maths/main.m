//
//  main.m
//  Maths
//
//  Created by Tomona Sako on 2020/06/09.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        ScoreKeeper *score = [[ScoreKeeper alloc]init];
        QuestionManager *qm = [[QuestionManager alloc]init];
        
        while(true) {
            Question *q = [questionFactory generateRandomQuestion];
            [qm.questions addObject:q];
            NSLog(@"%@", q.question);
            NSString *userAnswer = [InputHandler getUserInput: @"Enter your answer"];
            NSString *result;
            
            if([userAnswer  isEqual: @"quit"]){
                [score writeResult];
                NSLog(@"%@", [qm timeOutput]);
                break;
            }
            
            if (userAnswer == [NSString stringWithFormat:@"%ld", q.answer]) {
                result = @"Right!";
                score.rightNum += 1;
            } else {
                result = @"Wrong!";
                score.wrongNum += 1;
            }
            NSLog(@"%@", result);
        }
    }
    return 0;
}
