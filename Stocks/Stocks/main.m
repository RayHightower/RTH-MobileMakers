//
//  main.m
//  Stocks
//
//  Created by RTH on 1/28/13.
//  Copyright (c) 2013 WisdomGroup. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

// Array with three instances of StockHolding (to start)
// NSArray *portfolio;  // = [[StockHolding alloc] init];

NSMutableArray *portfolio; // Array of pointers to shares held in the portfolio

StockHolding *holding;      // declare a pointer to one instance of the class holding stock info

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        holding = [[StockHolding alloc] init];  // alloc init one instance of the class and point to it
        
        [holding setPurchaseSharePrice:123.45f];
        [holding setCurrentSharePrice:491.03f];
        [holding setNumberOfShares:(300*2)];

        NSLog(@"\n\n** Portfolio Listing **\n");
        NSLog(@"\n(holding) Purchase Share Price = %f\n\n", [holding purchaseSharePrice]);
        NSLog(@"\n(holding) Current Share Price = %f\n\n", [holding currentSharePrice]);
        NSLog(@"\n(holding) # of Shares Held = %d\n\n", [holding numberOfShares]);

        int i = 0;
        
        for (i = 0; i < 10; i++) {

            [portfolio objectAtIndex:i] = [[StockHolding alloc] init];

            [portfolio[i] setPurchaseSharePrice:283.45f];
            [portfolio[i] setCurrentSharePrice:98.43f];

            [portfolio[i] setCurrentSharePrice:98.43f];

            
            [[portfolio indexOfObject:i] setNumberOfShares:(500*i)];

            NSLog(@"\n\n** portfolio[%d] Purchase Share Price = %f\n\n", i, [portfolio[i] purchaseSharePrice]);
            NSLog(@"\n** portfolio[%d] Current Share Price = %f\n\n", i, [portfolio[i] currentSharePrice]);
            NSLog(@"\n** portfolio[%d] # of Shares Held = %d\n\n", i, [portfolio[i] numberOfShares]);

        }
 
    }
    return 0;
}

