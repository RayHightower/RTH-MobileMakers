//
//  Appliance.m
//  Appliances
//
//  Created by RTH on 1/27/13.
//  Copyright (c) 2013 WisdomGroup. All rights reserved.
//

#import "Appliance.h"

@implementation Appliance

@synthesize productName, voltage;

-(id)initWithProductName:(NSString *)pn;
{
    self = [super init];
    
    if (self) {
        
        [self setProductName:pn];
        [self setVoltage:120];
    }

    return self;
    
}

-(id)init
{
    return [self initWithProductName:@"Unknown"];
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"<%@: %d volts>", productName, voltage];
    
}


@end
