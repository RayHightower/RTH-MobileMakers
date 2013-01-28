//
//  ViewController.m
//  Clock
//
//  Created by RTH on 1/15/13.
//  Copyright (c) 2013 WisdomGroup. All rights reserved.
//

#import "ViewController.h"
#import <time.h>

@interface ViewController ()
{
    NSDate* dateAndTime;
    IBOutlet UILabel* dateAndTimeLabel;
    UIView* currentView;
}

@end

@implementation ViewController
@synthesize showCurrentTime;        // Is this an instance variable? Better solution?



- (IBAction)getCurrentTime:(id)sender {
// manually update the time when button is pushed
    
    // NSDateFormatter courtesy of Stack Overflow
    // Repeating this violates DRY!!!
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setFormatterBehavior:NSDateFormatterBehavior10_4];
    [formatter setDateStyle:NSDateFormatterNoStyle];
    [formatter setTimeStyle:NSDateFormatterLongStyle];
    NSString *stringVersionOfDate = [formatter stringFromDate:[NSDate date]];
    
    // First, get the time
    NSLog (@"dateAndTime = %@", stringVersionOfDate);  // so we can display it.
    
    // showCurrentTime.text = dateAndTime;        // gotta cast this as a string.
    showCurrentTime.text = stringVersionOfDate;
}

- (IBAction)changeTimeZone:(id)sender {
    
    NSLog(@"Now changing the time zone...");
    showCurrentTime.text = @"NEW Time Zone...";
}

-(void)updateTimeWindow {
// automatically update the time every second
    
    // NSDateFormatter courtesy of Stack Overflow
    // Repeating this violates DRY!!!
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setFormatterBehavior:NSDateFormatterBehavior10_4];
    [formatter setDateStyle:NSDateFormatterNoStyle];
    [formatter setTimeStyle:NSDateFormatterLongStyle];
    NSString *stringVersionOfDate = [formatter stringFromDate:[NSDate date]];
    
    // Change the time zone
    [formatter setTimeZone:[NSTimeZone timeZoneWithName:@"Europe/Budapest"]];
    
    // First, get the time
    NSLog (@"dateAndTime = %@", stringVersionOfDate);  // so we can display it.
    NSLog (@"Time zone = %@", [formatter timeZone]);  // so we can display it.
    
    
    // showCurrentTime.text = dateAndTime;        // gotta cast this as a string.
    showCurrentTime.text = stringVersionOfDate;

    // call getCurrentTime again every second
    [self performSelector:@selector(updateTimeWindow) withObject:self afterDelay:1.0];

}

- (void)viewDidLoad
{
    /*  NSDateFormatter courtesy of Stack Overflow
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setFormatterBehavior:NSDateFormatterBehavior10_4];
    [formatter setDateStyle:NSDateFormatterNoStyle];
    [formatter setTimeStyle:NSDateFormatterLongStyle];
    NSString *stringVersionOfDate = [formatter stringFromDate:[NSDate date]];
    */
    
    // showCurrentTime.text = stringVersionOfDate;
    showCurrentTime.text = @"Time Window...";
    
    [super viewDidLoad];
	
    NSLog (@"dateAndTime = %@", dateAndTime);  // Yes, we know the date & time.
	NSLog (@"dateAndTimeLabel = %@", dateAndTimeLabel.text);

    [self updateTimeWindow];      // Let's go get the time, and keep getting it.
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeBackgroundColor:(id)sender {
    NSLog(@"Changing the background color.");
    
    currentView = [self view];
    NSLog (@"current class = %@", [self class]);
    NSLog (@"current backgroundColor = %@", [currentView backgroundColor]);
    
    // [currentView backgroundColor] = [UIColor orangeColor];
    // dots on the left. Brackets on the right. Amirite???
    currentView.backgroundColor = [UIColor redColor];
    
    
}

- (IBAction)resetBackgroundColor:(id)sender {

    currentView.backgroundColor = [UIColor grayColor];

}


@end
