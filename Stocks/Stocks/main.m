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

NSMutableArray *portfolio; // = [[NSMutableArray alloc] init]; // Array of pointers to shares held in the portfolio

// NSMutableArray *anotherArray = [NSMutableArray array]; // Array of pointers to shares held in the portfolio


StockHolding *holding;      // declare a pointer to one instance of the class holding stock info

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        holding = [[StockHolding alloc] init];  // alloc init one instance of the class and point to it
        
        [holding setPurchaseSharePrice:123.45f];
        [holding setCurrentSharePrice:491.03f];
        [holding setNumberOfShares:(300*2)];

        NSLog(@"\n\n** Portfolio Listing **\n");
        NSLog(@"\n(holding) Purchase Share Price = %.2f\n\n", [holding purchaseSharePrice]);
        NSLog(@"\n(holding) Current Share Price = %.2f\n\n", [holding currentSharePrice]);
        NSLog(@"\n(holding) # of Shares Held = %d\n\n", [holding numberOfShares]);

        NSLog(@"\n(holding) costInDollars = %.2f\n\n", [holding costInDollars]);
        NSLog(@"\n(holding) valueInDollars = %.2f\n\n", [holding valueInDollars]);

        portfolio = [[NSMutableArray alloc] init];
        
        int i = 0;
        
        for (i = 0; i < 10; i++) {

            
            
            [portfolio addObject:holding]; // = [[StockHolding alloc] init];  // alloc init one instance of the class and point to it
            
            //[portfolio addObject:holding];  // = [[StockHolding] alloc] init];
            
            [[portfolio objectAtIndex:i] setPurchaseSharePrice:283.45];
            [[portfolio objectAtIndex:i] setCurrentSharePrice:98.43];
            [[portfolio objectAtIndex:i] setNumberOfShares:(500*i)];

            NSLog(@"\n\n** [[portfolio objectAtIndex:%d] purchaseSharePrice] = %.2f\n\n", i, [[portfolio objectAtIndex:i] purchaseSharePrice]);
            NSLog(@"\n** [[portfolio objectAtIndex:%d] currentSharePrice] = %.2f\n\n", i, [[portfolio objectAtIndex:i] currentSharePrice]);
            NSLog(@"\n** [[portfolio objectAtIndex:%d] numberOfShares] = %d\n\n", i, [[portfolio objectAtIndex:i] numberOfShares]);

        }
 
    }
    return 0;
}

