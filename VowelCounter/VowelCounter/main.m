//
//  main.m
//  VowelCounter
//
//  Created by RTH on 1/27/13.
//  Copyright (c) 2013 WisdomGroup. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+VowelCounting.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *string = @"Hello, citizens of the universe!";
        NSLog(@"\n%@ has %d vowels", string, [string vowelCount]);
        
    }
    return 0;
}

