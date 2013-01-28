//
//  InfoViewController.m
//  PhotoViewer
//
//  Created by RTH on 1/21/13.
//  Copyright (c) 2013 WisdomGroup. All rights reserved.
//

#import "InfoViewController.h"

@interface InfoViewController ()

@end

@implementation InfoViewController

@synthesize currentPhoto;
@synthesize detailsLabel;   // I had to @synthesize this manually. Why?
                            // Lynda video says it should synthesize automatically

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
    [detailsLabel setText:[currentPhoto notes]];   // Why did Xcode insist on adding the underscore?
    NSLog (@"[currentPhoto name] = %@", [currentPhoto name]);
    NSLog (@"[currentPhoto filename] = %@", [currentPhoto filename]);
    NSLog (@"[currentPhoto notes] = %@", [currentPhoto notes]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismiss:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    // dismissModelViewController is depricated in favor of what? RTH: dismissViewController. Per StackOverfloe, the word "Modal" has been removed.
}
@end
