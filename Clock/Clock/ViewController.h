//
//  ViewController.h
//  Clock
//
//  Created by RTH on 1/15/13.
//  Copyright (c) 2013 WisdomGroup. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController




@property (weak, nonatomic) IBOutlet UILabel *showCurrentTime;

- (IBAction)changeBackgroundColor:(id)sender;

- (IBAction)resetBackgroundColor:(id)sender;

- (IBAction)getCurrentTime:(id)sender;

- (IBAction)changeTimeZone:(id)sender;



@end
