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
// NSArray *portfolio = [@"Apple", @"IBM", @"HewlettPackard", nil];

StockHolding *holding;

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        [holding setPurchaseSharePrice:123.45];
        [holding setCurrentSharePrice:491.03];
        [holding setNumberOfShares:300];

        NSLog(@"\n\n** Portfolio Listing **\n");
        NSLog(@"\nPurchase Share Price = %f", [holding purchaseSharePrice]);
        NSLog(@"\nCurrent Share Price = %f", [holding purchaseSharePrice]);
        NSLog(@"\nNumber of shares in portfolio = %f", [holding purchaseSharePrice]);
        
        
    }
    return 0;
}

