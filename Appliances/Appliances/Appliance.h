//
//  Appliance.h
//  Appliances
//
//  Created by RTH on 1/27/13.
//  Copyright (c) 2013 WisdomGroup. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Appliance : NSObject {
    NSString *productName;
    int voltage;
}

@property (copy) NSString *productName;
@property int voltage;


@end
