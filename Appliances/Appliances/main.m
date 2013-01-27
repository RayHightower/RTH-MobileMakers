//
//  main.m
//  Appliances
//
//  Created by RTH on 1/27/13.
//  Copyright (c) 2013 WisdomGroup. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Appliance.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"\nExercising the Appliances Command Line App\n");
        
        Appliance *a = [[Appliance alloc] init];
        NSLog(@"a is %a", a);
        
        [a setProductName:@"Refridgerator of Stainless Steel"];
        [a setVoltage:240];
        NSLog(@"a is %a", a);
        
    }
    return 0;
}

