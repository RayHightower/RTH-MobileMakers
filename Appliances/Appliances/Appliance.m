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

-(id)init
{
    self = [super init];
    
    voltage = 120;
    
    return self;
    
}

@end
