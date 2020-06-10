//
//  Box.m
//  Lab2
//
//  Created by Tomona Sako on 2020/06/09.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype)initWithHeight: (float) height andWidth: (float) width andLength: (float)length;
{
    self = [super init];
    if (self) {
        _height = height;
        _width = width;
        _length = length;
    }
    return self;
}

- (float) calculateVolume {
    return self.height * self.width * self.length;
}

- (float) howManyBoxes :(Box*) anotherBox {
    float anotherBoxVolume = [anotherBox calculateVolume];
    float thisBoxVolume = [self calculateVolume];
//    if (anotherBoxVolume >= thisBoxVolume) {
//    return floor(anotherBoxVolume / thisBoxVolume);
//    } else {
        return floor(thisBoxVolume / anotherBoxVolume);
//    }
}


@end
