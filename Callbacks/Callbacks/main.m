//
//  main.m
//  Callbacks
//
//  Created by RTH on 1/26/13.
//  Copyright (c) 2013 WisdomGroup. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Logger.h"



int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Logger *logger = [[Logger alloc] init];
        
        // warning because the var timer isn't used. Code still runs with just the method declaration, not the assignment!!!!
        NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                          target:logger
                                                        selector:@selector(sayOuch:)
                                                        userInfo:nil
                                                         repeats:YES];
        
        
        [[NSRunLoop currentRunLoop] run];
        NSLog(@"The loop has finished.");
        
    }
    return 0;
}

