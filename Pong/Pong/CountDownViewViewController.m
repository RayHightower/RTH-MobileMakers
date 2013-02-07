//
//  CountDownViewViewController.m
//  Pong
//
//  Created by Don Bora on 1/28/13.
//  Copyright (c) 2013 Don Bora. All rights reserved.
//

#import "CountDownViewViewController.h"

@interface CountDownViewViewController ()
{
    IBOutlet UILabel* label;
    int count;
}
@end

@implementation CountDownViewViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    count = 5;
    [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(decrementCount) userInfo:nil repeats:YES];
}

-(void)decrementCount
{
    count--;
    
    if (count > 0) {
        label.text = [NSString stringWithFormat:@"%i", count];
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
