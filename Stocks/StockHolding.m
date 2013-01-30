//
//  StockHolding.m
//  Stocks
//
//  Created by RTH on 1/28/13.
//  Copyright (c) 2013 WisdomGroup. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize purchaseSharePrice;
@synthesize currentSharePrice;
@synthesize numberOfShares;

-(float)costInDollars
{
    return numberOfShares * purchaseSharePrice;
}

-(float)valueInDollars
{
    return numberOfShares * currentSharePrice;
}

@end
