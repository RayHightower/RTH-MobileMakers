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
// NSArray *portfolio = [[StockHolding alloc] init];

// NSMutableArray *portfolio; // Array of pointers to shares held in the portfolio

StockHolding *holding;

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        [holding setPurchaseSharePrice:123.45];
        [holding setCurrentSharePrice:491.03];
        [holding setNumberOfShares:300];

        NSLog(@"\n\n** Portfolio Listing **\n");
        NSLog(@"\n(holding) Purchase Share Price = %f", [holding purchaseSharePrice]);
        NSLog(@"\n(holding) Current Share Price = %f", [holding currentSharePrice]);
        NSLog(@"\n(holding) # of Shares Held = %d", [holding numberOfShares]);

/*
        [portfolio[0] setPurchaseSharePrice:283.45];
        [portfolio[0] setCurrentSharePrice:98.43];
        [portfolio[0] setNumberOfShares:500];
        
        NSLog(@"\n\nPurchase Share Price = %f", [portfolio[0] purchaseSharePrice]);
        NSLog(@"\nCurrent Share Price = %f", [portfolio[0] currentSharePrice]);
        NSLog(@"\n# of Shares Held = %d", [portfolio[0] numberOfShares]);
*/
 
    }
    return 0;
}

