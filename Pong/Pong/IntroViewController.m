//
//  IntroViewController.m
//  Pong
//
//  Created by Don Bora on 10/17/12.
//  Copyright (c) 2012 Don Bora. All rights reserved.
//

#import "IntroViewController.h"
#import "GameViewController.h"


@interface IntroViewController ()

@end

@implementation IntroViewController

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

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeRight || interfaceOrientation == UIInterfaceOrientationLandscapeLeft);
}
-(IBAction)startGame:(id)sender
{
    GameViewController* gameViewController = [[GameViewController alloc] initWithNibName:@"GameViewController" bundle:nil];
    gameViewController.view.alpha = 0.0f;
    [self.view addSubview:gameViewController.view];
    
    [UIView animateWithDuration:2.0
                     animations:^{
                         gameViewController.view.alpha = 1.0f;
                     }
                     completion:^(BOOL finished) {
                     }];
    
}

@end
