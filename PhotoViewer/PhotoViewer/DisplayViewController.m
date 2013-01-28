//
//  DisplayViewController.m
//  PhotoViewer
//
//  Created by RTH on 1/21/13.
//  Copyright (c) 2013 WisdomGroup. All rights reserved.
//

#import "DisplayViewController.h"

@interface DisplayViewController ()

@end

@implementation DisplayViewController

@synthesize currentPhoto;

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"ShowInfo"]) {         // If this is the correct segue (segues can be named) then go ahead and prepare for it.
        InfoViewController *ivc = [segue destinationViewController];
        [ivc setCurrentPhoto:[self currentPhoto]];
    }
}


/*
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"ShowPhoto"]) {                 // If this is the correct segue (segues can be named) then let's go ahead and prepare for it.
        DisplayViewController *dvc = [segue destinationViewController];
        NSIndexPath *path = [self.tableView indexPathForSelectedRow];
        Photo *c = [photos objectAtIndex:path.row];     // We can do better than single-letter variables!!!
        [dvc setCurrentPhoto:c];
    }
}
*/



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
    UIImage *Image = [UIImage imageNamed:[currentPhoto filename]];
    [self.currentImage setImage:Image];
    [self setTitle:[currentPhoto name]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
