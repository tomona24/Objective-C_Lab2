//
//  main.m
//  Lab2
//
//  Created by Tomona Sako on 2020/06/09.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        float height = 5;
        float width = 5;
        float length = 5.2;
        
        Box *b1 = [[Box alloc] initWithHeight: height  andWidth: width andLength: length ];
        
        NSLog(@"The volume is %f", [b1 calculateVolume]);
        
        Box *b2 = [[Box alloc] initWithHeight:3 andWidth:2 andLength:4];
        NSLog(@"The volume is %f", [b2 calculateVolume]);
        NSLog(@"How many box : %f", [b1 howManyBoxes:b2]);
        NSLog(@"How many box : %f", [b2 howManyBoxes:b1]);
    }
    return 0;
}
