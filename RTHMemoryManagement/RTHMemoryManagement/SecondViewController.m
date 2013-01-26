//
//  SecondViewController.m
//  RTHMemoryManagement
//
//  Created by RTH on 1/24/13.
//  Copyright (c) 2013 WisdomGroup. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)dealloc {
    [_string release];
    [super dealloc];
}


- (IBAction)closeSecond:(id)sender {
    [self.view removeFromSuperview];
}
@end
