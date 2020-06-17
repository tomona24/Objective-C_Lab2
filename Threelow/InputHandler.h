//
//  InputHandler.h
//  Threelow
//
//  Created by Tomona Sako on 2020/06/16.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputHandler : NSObject
+ (NSString*) getUserInput : (NSString *)prompt;
@end

NS_ASSUME_NONNULL_END
