//
//  main.m
//  ASCIIcodes
//
//  Created by RTH on 1/27/13.
//  Copyright (c) 2013 WisdomGroup. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        char x = '!';
        
        while (x <= '~') {
            printf("%x hex is %c\n", x, x);
            x++;
            
        }
        
    }
    return 0;
}

