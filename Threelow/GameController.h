//
//  GameController.h
//  Threelow
//
//  Created by Tomona Sako on 2020/06/16.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject
@property NSArray *dices;
@property NSMutableDictionary *heldDices;
-(instancetype)init;

@end

NS_ASSUME_NONNULL_END
