//
//  Dice.h
//  Threelow
//
//  Created by Tomona Sako on 2020/06/16.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject
@property NSInteger *currentValue;
- (NSString *) rollDice;
- (NSString *) rollDiceCheatly;
@end

NS_ASSUME_NONNULL_END
